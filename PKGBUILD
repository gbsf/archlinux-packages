# $Id$
# Maintainer: damir <damir@archlinux.org>

pkgname=libmusepack
pkgver=1.1
pkgrel=2
pkgdesc="Musepack decoding library"
depends=('glibc')
source=(http://www.saunalahti.fi/grimmel/musepack.net-files/source/libmusepack-$pkgver.tar.bz2)
url="http://musepack.net/"
md5sums=('C06AA1DA054ED79989CD71D5300ED7C5')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}
