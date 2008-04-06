# $Id: PKGBUILD,v 1.2 2006/02/18 18:24:54 simo Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Lukas Sabota <punkrockguy318@comcast.net>
pkgname=pente
pkgver=2.2.5
pkgrel=2
pkgdesc="A five in a row game that can be played with X, curses, or text."
url="http://www.igoweb.org/~wms/comp/pente/"
depends=('ncurses' 'termcap-compat' 'libx11')

source=(http://www.igoweb.org/~wms/comp/pente/$pkgname-$pkgver.tar.gz)
md5sums=('af1d851f1e2e0b41c52ea2772fbd5cc0')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  mkdir -p $startdir/pkg/usr/bin/
  mkdir -p $startdir/pkg/usr/man/man6/
  cp pente-i686-Linux $startdir/pkg/usr/bin/pente
  cp man6/pente.6 $startdir/pkg/usr/man/man6/pente.6
}
