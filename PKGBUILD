# $Id$
# Maintainer: arjan <arjan@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=xscorch
pkgver=0.2.0
pkgrel=1
pkgdesc="A clone of the classic DOS game Scorched Earth"
depends=('gtk' 'libmikmod')
source=(http://chaos2.org/$pkgname/$pkgname-$pkgver.tar.gz)
url="http://chaos2.org/xscorch/"

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
