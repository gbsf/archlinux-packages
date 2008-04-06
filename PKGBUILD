# $Id: PKGBUILD,v 1.13 2007/10/13 02:10:29 damir Exp $
# Contributor: Tobias Powalowski <t.powa@gmx.de>
# Maintainer: damir <damir@archlinux.org>

pkgname=pstoedit
pkgver=3.45
pkgrel=1
depends=("gcc-libs>=4.2.1" "plotutils>=2.5" "gd" "imagemagick")
pkgdesc="translates PostScript and PDF graphics into other vector formats"
arch=("i686" "x86_64")
license=('GPL')
source=("http://puzzle.dl.sourceforge.net/sourceforge/pstoedit/pstoedit-$pkgver.tar.gz")
url="http://www.pstoedit.net/"
options=('!libtool')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}

md5sums=('071efc64d9edf5d942b407348ac7451d')
