# $Id: PKGBUILD,v 1.10 2006/01/04 02:25:59 juergen Exp $
# Maintainer: Juergen Hoetzel <juergen@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=gozer
pkgver=0.7
pkgrel=4
pkgdesc="A text rendering utility for creating images from text"
depends=('giblib')
source=(http://linuxbrit.co.uk/downloads/$pkgname-$pkgver.tar.gz)
url="http://linuxbrit.co.uk/gozer/"
md5sums=('6eaa33a759d9c15967e0b7f008cc3d55')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  /usr/bin/make CFLAGS="${CFLAGS}" || return 1
  /usr/bin/make prefix=$startdir/pkg/usr install
}
# vim: ts=2: ft=sh
