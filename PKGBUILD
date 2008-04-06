# $Id: PKGBUILD,v 1.18 2008/02/07 10:55:15 james Exp $
# Maintainer: James Rayner <iphitus@gmail.com>
# Contributor: Andrew Simmons <andrew.simmons@gmail.com>

pkgname=gparted
pkgver=0.3.5
pkgrel=1
pkgdesc="A Partition Magic clone written in C++ using the Gtkmm toolkit"
arch=(i686 x86_64)
url="http://gparted.sourceforge.net"
license=(GPL)
depends=('parted>=1.8.8' 'gtkmm')
makedepends=('intltool')
install=('gparted.install')
source=(http://optusnet.dl.sourceforge.net/$pkgname/$pkgname-$pkgver.tar.bz2)

build() {

  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  
  sed -i "s/Exec=gparted/Exec=gksu gparted/g" $startdir/pkg/usr/share/applications/gparted.desktop

}


md5sums=('c99c3d78192519b0b7c932a0920ac169')
