# $Id$
# Maintainer: Aaron Griffin <aaron@archlinux.org>

pkgname=abiword
pkgver=2.4.6
pkgrel=2
pkgdesc="A fully-featured word processor"
arch=(i686 x86_64)
license=('GPL')
url="http://www.abisource.com"
depends=('libsm' 'fribidi>=0.10.7' 'enchant>=1.3.0' 'libgnomeprintui' 'wv>=1.2.4')
makedepends=('pkgconfig')
source=(http://www.abisource.com/downloads/abiword/${pkgver}/source/${pkgname}-${pkgver}.tar.bz2)
md5sums=('8ed5fb282b9741aca75b9e47500d39a1')

build() {
  export MAKEFLAGS="-j1"
  cd ${startdir}/src/${pkgname}-${pkgver}/abi
  ./configure --prefix=/usr --with-libxml2 --disable-gucharmap --with-sys-wv
  make || return 1
  make DESTDIR=${startdir}/pkg install
  rm -rf ${startdir}/pkg/usr/lib
  mv ${startdir}/pkg/usr/share/icons ${startdir}/pkg/usr/share/pixmaps
}
