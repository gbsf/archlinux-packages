# $Id: PKGBUILD,v 1.6 2006/01/09 19:08:43 kevin Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
pkgname=blassic
pkgver=0.10.0
pkgrel=2
pkgdesc="A classic Basic interpreter"
url="http://blassic.org/"
depends=('gcc' 'libsm' 'libx11' 'ncurses')
source=(http://blassic.org/bin/$pkgname-$pkgver.tgz)
md5sums=('f4d66a339c55cb08fdc00cd9db8001c2')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make prefix=$startdir/pkg/usr install
}
