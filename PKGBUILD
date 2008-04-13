# $Id: PKGBUILD,v 1.10 2008/03/30 13:18:02 jgc Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
pkgname=libavg
pkgver=0.7.0
pkgrel=4
pkgdesc="High-level multimedia platform with a focus on interactive art installations"
arch=('i686' 'x86_64')
url="http://www.libavg.de"
depends=('imagemagick>=6.4.0.2' 'ffmpeg>=20071204-1' 'boost>=1.34.1-2' 'python>=2.5'
	 'libdc1394>=2.0.1')
makedepends=('pkgconfig' 'diffutils' 'libtool' 'autoconf' 'automake')
options=('!libtool' '!emptydirs')
license=('LGPL')
source=(http://www.libavg.de/${pkgname}-${pkgver}.tar.gz
	gcc-4.3.patch
	dc1394-2.0.patch)
md5sums=('2aedc1ea3cc4a14e98e0c891f217fa03' '50b41c612a64aedbc14958baa2e67355'\
         '35fa2846381016c612d6b68b400b89a1')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np0 -i ${startdir}/src/gcc-4.3.patch || return 1
  patch -Np0 -i ${startdir}/src/dc1394-2.0.patch || return 1

  if [ "${CARCH}" = "x86_64" ]; then
    export CFLAGS="${CFLAGS} -fPIC"
    export CXXFLAGS="${CFLAGS}"
  fi

  touch README INSTALL ChangeLog AUTHORS
  libtoolize --force --copy || return 1
  aclocal -I ./m4 || return 1
  autoconf || return 1
  automake || return 1
  CXXFLAGS="${CXXFLAGS} -I/usr/include/ImageMagick" ./configure --prefix=/usr \
              --disable-DFB \
              --enable-GL \
              --enable-v4l2 \
              --with-boost-thread=boost_thread-mt || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  install -d -m755 ${startdir}/pkg/etc
  install -m 644 ${startdir}/src/${pkgname}-${pkgver}/src/avgrc \
                 ${startdir}/pkg/etc/avgrc || return 1
}
