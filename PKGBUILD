# $Id: PKGBUILD,v 1.11 2005/08/29 12:58:10 jgc Exp $
# Maintainer: arjan <arjan@archlinux.org>
# Contributor Sarah Hay <sarahhay@mb.sympatico.ca>

pkgname=libdvdcss
pkgver=1.2.9
pkgrel=2
pkgdesc="libdvdcss is a cross-platform library for transparent DVD device access with on-the-fly CSS decryption."
depends=('glibc')
source=(http://download.videolan.org/pub/$pkgname/$pkgver/$pkgname-$pkgver.tar.bz2)
url="http://www.videolan.org/libdvdcss/"
md5sums=('553383d898826c285afb2ee453b07868')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
