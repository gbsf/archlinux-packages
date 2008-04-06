# $Id: PKGBUILD,v 1.5 2006/01/20 19:45:20 jason Exp $
# Maintainer: Jason Chu <jason@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=gscanbus
pkgver=0.7.1
pkgrel=2
pkgdesc="gscanbus is a little bus scanning, testing and topology visualizing tool for the Linux IEEE1394 subsystem"
depends=('libraw1394>=1.2.0' 'gtk')
# Patch by Gentoo
source=(http://download.berlios.de/$pkgname/$pkgname-$pkgver.tgz gcc.patch)
md5sums=('313141104991c0660f140200b569d0d2' '325a51d833e143f51cccb972b4114b3b')
url="http://gscanbus.berlios.de/"

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -p0 < ../gcc.patch
  ./configure --prefix=/usr
  sed -i 's# /etc# $(DESTDIR)/etc#' Makefile
  make || return 1
  mkdir -p $startdir/pkg/etc
  make DESTDIR=$startdir/pkg install
#  cp guid-resolv.conf oui-resolv.conf $startdir/pkg/etc
#  rm /etc/guid-resolv.conf /etc/oui-resolv.conf
}
