# $Id: PKGBUILD,v 1.3 2007/09/19 20:48:33 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
pkgname=db4.1
pkgver=4.1.25
pkgrel=2
pkgdesc="The Berkeley DB embedded database system 4.1"
arch=(i686 x86_64)
license=('custom')
url="http://www.oracle.com/technology/software/products/berkeley-db/index.html"
depends=('gcc-libs')
options=('!libtool' '!makeflags')
source=(http://download-uk.oracle.com/berkeley-db/db-${pkgver}.tar.gz
	http://www.oracle.com/technology/products/berkeley-db/db/update/4.1.25/patch.4.1.25.1
	http://www.oracle.com/technology/products/berkeley-db/db/update/4.1.25/patch.4.1.25.2
	http://www.oracle.com/technology/products/berkeley-db/db/update/4.1.25/patch.4.1.25.3)
md5sums=('d82ed75cb53b0daba4a7e959e8a6f86c' '1e073d12cd89f9345e281ca07368f74b'
         '5eedc6818783b4b89317d89d2babb6f7' 'bda83ce3ce18a3e9001d0c2eb90d9508')

build() {
  cd ${startdir}/src/db-${pkgver}/
  patch -Np0 -i ${startdir}/src/patch.4.1.25.1 || return 1
  patch -Np0 -i ${startdir}/src/patch.4.1.25.2 || return 1
  patch -Np0 -i ${startdir}/src/patch.4.1.25.3 || return 1
  cd build_unix
  ../dist/configure --prefix=/usr --enable-compat185 \
    --enable-shared --disable-static --enable-cxx
  make LIBSO_LIBS=-lpthread || return 1
  make prefix=${startdir}/pkg/usr \
       includedir=${startdir}/pkg/usr/include/db4.1 install

  rm -rf ${startdir}/pkg/usr/docs
  rm -f ${startdir}/pkg/usr/lib/libdb{,_cxx}.so
  rm -f ${startdir}/pkg/usr/lib/libdb{,_cxx}-4.so

  cd ${startdir}/pkg/usr/bin
  for i in *; do
    mv $i db4.1_${i/db_/}
  done
  mkdir -p ${startdir}/pkg/usr/share/licenses/${pkgname}
  install -m644 ${startdir}/src/db-${pkgver}/LICENSE ${startdir}/pkg/usr/share/licenses/${pkgname}/LICENSE

}
