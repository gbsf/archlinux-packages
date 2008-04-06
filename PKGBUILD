# $Id: PKGBUILD,v 1.7 2008/02/06 01:24:38 eric Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>

pkgname=dirsync
pkgver=1.0.11
origver=1_11
pkgrel=2
pkgdesc="a Directory Synchronizer this utility take two argument the source directory and the destination and make recursively the two directories identical"
arch=(i686 x86_64)
url="http://www.viara.eu/en/dirsync.htm"
depends=('glibc')
license=('unknown')
source=(http://www.viara.eu/download/$pkgname-$origver.tar.gz)
md5sums=('2eb3745f674fb71047ca4e64110ceb68')

build() {
  cd $startdir/src

  rm $pkgname || return 1

  make linux || return 1

  mkdir -p $startdir/pkg/usr/bin

  sed -i 's|/usr/local|/usr/share|g' makefile
  make DESTDIR=$startdir/pkg install || return 1
}

