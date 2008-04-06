# $Id: PKGBUILD,v 1.4 2008/03/31 08:48:03 pierre Exp $
# Contributor: nut543 <kfs1@online.no>
# Maintainer: Dale Blount <dale@archlinux.org>
pkgname=re2c
pkgver=0.13.3
arch=('i686' 'x86_64')
depends=('gcc-libs')
makedepends=('gcc')
pkgrel=1
pkgdesc="a tool for generating C-based recognizers from regular expressions."
url="http://re2c.sourceforge.net/"
license="GPL"
source=(http://downloads.sourceforge.net/sourceforge/re2c/re2c-${pkgver}.tar.gz)
md5sums=('a8ff508adb4d3edc46beae231976d113')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}

