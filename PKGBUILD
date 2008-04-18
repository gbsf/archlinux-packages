# $Id$
# Maintainer: Jason Chu <jason@archlinux.org>
# Contributor: Jason Chu <jason@archlinux.org>
pkgname=gphoto2
pkgver=2.4.0
pkgrel=1
pkgdesc="A digital camera download and access program."
arch=(i686 x86_64)
url="http://www.gphoto.org"
depends=(glibc 'libgphoto2>=2.4.0' 'libexif>=0.6.9' libjpeg ncurses popt readline aalib)
source=(http://downloads.sourceforge.net/gphoto/$pkgname-$pkgver.tar.bz2)
md5sums=('5fd1f711ca806adb687b33c55964d898')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make prefix=$startdir/pkg/usr install
}
