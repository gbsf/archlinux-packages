# $Id: PKGBUILD,v 1.3 2007/07/08 04:14:40 eric Exp $
# Maintainer: <arjan@archlinux.org>
# Contributor: William Rea <sillywilly@gmail.com>
pkgname=libnl
pkgver=1.0pre6
pkgrel=1
pkgdesc="Library for applications dealing with netlink sockets"
arch=('i686' 'x86_64')
url="http://people.suug.ch/~tgr/libnl"
license=('GPL')
depends=('glibc')
source=(http://people.suug.ch/~tgr/$pkgname/files/$pkgname-1.0-pre6.tar.gz \
	libnl-1.0_pre6-amd64-typedef.diff)
md5sums=('0f57cb7085dc27e054691bff858613c9' '6254441d5e718e6b92341ed0513f902b')
build() {
  cd $startdir/src/libnl-1.0-pre6
  [ "$CARCH" = "x86_64" ] && (patch -Np2 -i $startdir/src/libnl-1.0_pre6-amd64-typedef.diff || return 1)
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
