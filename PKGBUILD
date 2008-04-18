# $Id$
# Maintainer: damir <damir@archlinux.org>
pkgname=bs
pkgver=2.7
pkgrel=1
pkgdesc="The classic game of Battleships against the computer. Ncurses."
url="http://www.catb.org/~esr/bs/"
depends=('ncurses')

source=($url/$pkgname-$pkgver.tar.gz)
md5sums=('5786c6006e503d100e65139dadb5d5a7')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1

  mkdir -p $startdir/pkg/usr/bin
  cp bs $startdir/pkg/usr/bin

  mkdir -p $startdir/pkg/usr/share/man/man6
  cp bs.6 $startdir/pkg/usr/share/man/man6/bs.6

}
