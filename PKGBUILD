# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>
pkgname=gcc-libs
pkgver=4.3.0
pkgrel=1
#_snapshot=4.2.3-RC-20080125
pkgdesc="Runtime libraries shipped by GCC for C and C++ languages"
arch=(i686 x86_64)
license=('GPL' 'LGPL')
groups=('base')
url="http://gcc.gnu.org"
depends=('glibc>=2.7')
makedepends=('binutils>=2.18-3' 'gcc>=4.2.2' 'mpfr>=2.3.1' 'texinfo')
conflicts=('gcc-fortran' 'gcc-objc')
provides=("gcc-objc=${pkgver}")
options=('!libtool' '!emptydirs')
source=(ftp://gcc.gnu.org/pub/gcc/releases/gcc-${pkgver}/gcc-{core,g++,fortran,objc}-${pkgver}.tar.bz2
	#ftp://gcc.gnu.org/pub/gcc/snapshots/${_snapshot}/gcc-{core,g++,fortran,objc}-${_snapshot}.tar.bz2
	gcc_pure64.patch
	gcc-hash-style-both.patch)
md5sums=('b1dc085dea8019cb92d4ee793562d1e4'
         '18eb135121f6e8190005e5a7e5ba2602'
         'f4211b970e7ebbf560bb2848742e5e43'
         '0c8136edbe4dc790ff209344791f3ad9'
         '4030ee1c08dd1e843c0225b772360e76'
         'bb420bc84b1104455b7230b1cd4b96c2')

build() {
  if ! locale -a | grep ^de_DE; then
    echo "You need the de_DE locale to build gcc."
    return 1
  fi
  
  cd ${startdir}/src/gcc-${pkgver}
  #cd ${startdir}/src/gcc-${_snapshot}
  # Don't install libiberty
  sed -i 's/install_to_$(INSTALL_DEST) //' libiberty/Makefile.in

  if [ "${CARCH}" = "x86_64" ]; then
    patch -Np1 -i ../gcc_pure64.patch || return 1
  fi
  patch -Np0 -i ${startdir}/src/gcc-hash-style-both.patch || return 1

  # Don't run fixincludes
  sed -i -e 's@\./fixinc\.sh@-c true@' gcc/Makefile.in

  mkdir build
  cd build
  ../configure --prefix=/usr --enable-shared \
      --enable-languages=c,c++,fortran,objc,obj-c++,treelang --enable-threads=posix \
      --enable-__cxa_atexit  --disable-multilib --libdir=/usr/lib \
      --libexecdir=/usr/lib --enable-clocale=gnu --disable-libstdcxx-pch \
      --with-tune=generic
  make || return 1
  make -j1 DESTDIR=${startdir}/pkg install-target-libstdc++-v3 install-target-libmudflap install-target-libgomp install-target-libssp install-target-libgfortran install-target-libobjc install-target-libgcc || return 1

  # Cleanup, libgomp installs the whole compiler it seems...
  rm -rf ${startdir}/pkg/usr/include
  rm -rf ${startdir}/pkg/usr/lib/gcc
  rm -rf ${startdir}/pkg/usr/bin
  rm -rf ${startdir}/pkg/usr{,share}/man
  find ${startdir}/pkg -name gcc.mo -delete
}
