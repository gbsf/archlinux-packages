# $Id: PKGBUILD,v 1.9 2008/03/06 12:39:37 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: 03/08/04 <lefungus@altern.org>

pkgname=libebml
pkgver=0.7.8
pkgrel=1
pkgdesc="Extensible Binary Meta Language library"
arch=(i686 x86_64)
url="http://dl.matroska.org/downloads/libebml/"
depends=('gcc-libs')
license=('LGPL')
#source=(http://www.bunkus.org/videotools/mkvtoolnix/sources/$pkgname-$pkgver.tar.bz2)
source=($url/$pkgname-$pkgver.tar.bz2)

build() {
 cd $startdir/src/$pkgname-$pkgver/make/linux
 make || return 1
 make prefix=$startdir/pkg/usr install
}


md5sums=('6278109f52e4f9d2c8a8dfc0d668b587')
