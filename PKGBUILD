# $Id: PKGBUILD,v 1.3 2005/06/18 23:12:47 simo Exp $
# Maintainer: Simo Leone <simo@archlinux.org>
# Contributor: Eric Johnson <eric@coding-zone.com>

pkgname=aspell-fr
pkgver=0.50.3
pkgrel=2
pkgdesc="French dictionary for aspell"
depends=('aspell')
url="http://aspell.net/"
source=(ftp://ftp.gnu.org/gnu/aspell/dict/fr/$pkgname-0.50-3.tar.bz2)
md5sums=('53a2d05c4e8f7fabd3cefe24db977be7')

build() {
  cd $startdir/src/$pkgname-0.50-3
  ./configure
  /usr/bin/make || return 1
  /usr/bin/make DESTDIR=$startdir/pkg install
}
# vim: ts=2 sw=2 et ft=sh
