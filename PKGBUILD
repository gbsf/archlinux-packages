# $Id: PKGBUILD,v 1.12 2005/06/18 23:12:47 simo Exp $
# Maintainer: Simo Leone <simo@archlinux.org>
# Contributor: Sarah Hay <sarah@archlinux.org>

pkgname=aspell-en
pkgver=6.0
pkgrel=1
pkgdesc="English dictionary for aspell"
depends=('aspell')
url="http://aspell.net/"
source=(ftp://ftp.gnu.org/gnu/aspell/dict/en/aspell6-en-$pkgver-0.tar.bz2)
md5sums=('16449e0a266e1ecc526b2f3cd39d4bc2')

build() {
  cd $startdir/src/aspell6-en-$pkgver-0
  ./configure
  /usr/bin/make || return 1
  /usr/bin/make DESTDIR=$startdir/pkg install
}
# vim: ts=2 sw=2 et ft=sh
