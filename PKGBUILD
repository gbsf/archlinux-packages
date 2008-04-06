# $Id: PKGBUILD,v 1.12 2007/12/17 22:21:07 jeff Exp $
# Maintainer: Jeff Mickey <jeff@archlinux.org>

pkgname=aria2
pkgver=0.12.0
pkgrel=1
pkgdesc="aria2 is a download utility with resuming and segmented downloading. Supports HTTP/HTTPS/FTP/BitTorrent/Metalink."
arch=(i686 x86_64)
url="http://aria2.sourceforge.net/"
license=('GPL')
depends=('gnutls' 'gcc-libs' 'libxml2>=2.6.30')
makedepends=('c-ares')
source=(http://downloads.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.bz2)

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}

md5sums=('18e600d6f720a1cb96959b182fe5a754')
sha1sums=('138380000be0e5df2e3ee4cbb39c0f872cdb195b')
