# $Id$
#Maintainer: Simo Leone <simo@archlinux.org>
pkgname=gtkterm
pkgver=0.99.5
pkgrel=2
pkgdesc="A gtk+ based serial port communication program"
arch=(i686 x86_64)
url="http://www.jls-info.com/julien/linux/"
license=(GPL)
depends=('vte>=0.14.0')
source=(http://www.jls-info.com/julien/linux/${pkgname}-${pkgver}.tar.gz)
md5sums=('007ce7810466396b6452dea9c57c5f02')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
