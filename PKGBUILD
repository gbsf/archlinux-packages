# $Id: PKGBUILD,v 1.10 2005/06/18 23:12:47 simo Exp $
# Maintainer: Simo Leone <simo@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=aspell-de
pkgver=20030222
pkgrel=1
pkgdesc="German dictionary for aspell"
depends=('aspell')
url="http://aspell.net/"
source=(ftp://ftp.gnu.org/gnu/aspell/dict/de/aspell6-de-$pkgver-1.tar.bz2)
md5sums=('5950c5c8a36fc93d4d7616591bace6a6')

build() {
  cd $startdir/src/aspell6-de-$pkgver-1
  ./configure
  /usr/bin/make || return 1
  /usr/bin/make DESTDIR=$startdir/pkg install
}
# vim: ts=2 sw=2 et ft=sh
