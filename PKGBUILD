# $Id$
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: damir <damir@archlinux.org>

pkgname=ascii
pkgver=3.6
pkgrel=1
pkgdesc="ascii - report character aliases"
url="http://www.catb.org/~esr/ascii/"
depends=(glibc)
conflicts=()
backup=()
install=
source=($url/$pkgname-$pkgver.tar.gz)

build() {
  cd $startdir/src/$pkgname-$pkgver

  make ascii ascii.1 || return 1

  mkdir -p $startdir/pkg/usr/bin
  mkdir -p $startdir/pkg/usr/share/man/man1

  cp ascii $startdir/pkg/usr/bin/ascii
  cp ascii.1 $startdir/pkg/usr/share/man/man1/

}
md5sums=('724c9743e13791585050c01be70a4cf9')
