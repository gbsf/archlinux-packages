# $Id$
# Maintainer: damir <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>

pkgname=tpb
pkgver=0.6.4
pkgrel=1
pkgdesc="Access the special buttons on a ThinkPad-Laptop using xosd"
url="http://savannah.nongnu.org/projects/tpb/"
depends=('xosd' 'glibc')
source=(http://savannah.nongnu.org/download/tpb/$pkgname-$pkgver.tar.gz)

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --sysconfdir=/etc
  /usr/bin/make || return 1
  /usr/bin/make DESTDIR=$startdir/pkg install
}


