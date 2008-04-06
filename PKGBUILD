# $Id: PKGBUILD,v 1.8 2006/03/05 14:01:04 jgc Exp $
# Maintainer: arjan <arjan@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
#
pkgname=aalib
pkgver=1.4rc5
pkgrel=4
pkgdesc="AAlib is a portable ASCII art GFX library"
depends=(glibc ncurses gpm libx11)
source=(http://dl.sourceforge.net/sourceforge/aa-project/$pkgname-$pkgver.tar.gz
	aclocal-fixes.patch)
url="http://aa-project.sourceforge.net/aalib/"
md5sums=(9801095c42bba12edebd1902bcf0a990 863a96a6689aa7ee073ca448bc2f133d)

build() {
  cd $startdir/src/$pkgname-1.4.0
  patch -Np0 -i ${startdir}/src/aclocal-fixes.patch || return 1
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
