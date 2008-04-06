# $Id: PKGBUILD,v 1.8 2005/03/09 19:54:55 aurelien Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>
pkgname=setserial
pkgver=2.17
pkgrel=2
pkgdesc="Allows to change various attributes of a serial device."
url="http://setserial.sourceforge.net/"
depends=('glibc')
source=(http://dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.gz $pkgname.patch)
md5sums=('c4867d72c41564318e0107745eb7a0f2' '99919d3be7c1550721494070a7ace66a')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 -i ../$pkgname.patch
  ./configure --prefix=/usr
  make || return 1
  mkdir -p $startdir/pkg/usr/{bin,man/man8}
  make DESTDIR=$startdir/pkg install
}
