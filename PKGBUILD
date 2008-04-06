# $Id: PKGBUILD,v 1.9 2004/04/19 06:24:58 dorphell Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
#

pkgname=srm
pkgver=1.2.8
pkgrel=1
pkgdesc="A secure replacement for rm(1) that overwrites data before unlinking"
depends=('glibc')
source=(http://dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.gz)
url="http://srm.sourceforge.net/"
md5sums=('66ba49b1864a7c69763210dbc3efee33')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make prefix=$startdir/pkg/usr install
}
# vim: ts=2 sw=2 et ft=sh
