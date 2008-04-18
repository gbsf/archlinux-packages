# $Id$
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=libcaptury
pkgver=158
pkgrel=1
pkgdesc="Captury is a realtime video capturing framework."
arch=('i686' 'x86_64')
url="http://rm-rf.in/captury"
license=('GPL2')
depends=('capseo')
makedepends=('pkgconfig')
# svn snapshot: svn co "svn://rm-rf.in/captury/trunk" "captury"
source=(ftp://ftp.archlinux.org/other/kde/$pkgname-$pkgver.tar.bz2)
options=(!libtool)

build() {
  # start building
  cd $startdir/src/$pkgname

  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}
md5sums=('a3feaa8271c53273cf5a8a0ef07d2417')
