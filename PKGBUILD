# $Id: PKGBUILD,v 1.13 2007/10/18 02:15:43 damir Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Damir <damir@archlinux.org>

pkgname=xtermcontrol
pkgver=2.9
pkgrel=1
pkgdesc="Enables dynamic control of XFree86 xterm properties"
arch=("i686" "x86_64")
url="http://www.thrysoee.dk/xtermcontrol/"
license="GPL"
depends=('glibc')
source=("http://www.thrysoee.dk/$pkgname/$pkgname-$pkgver.tar.gz")

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
md5sums=('00fb29732d71a2035324232862e8fe26')
