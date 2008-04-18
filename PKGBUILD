# $Id$
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=libmng
pkgver=1.0.10
pkgrel=1
pkgdesc="A collection of routines used to create and manipulate MNG format graphics files"
arch=('i686' 'x86_64')
url="http://www.libmng.com/"
license=('custom')
depends=('zlib' 'libjpeg')
options=(!libtool)
source=(http://dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.gz)
md5sums=('a464ae7d679781beebdf7440d144b7bd')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ln -s makefiles/configure.in .
  ln -s makefiles/Makefile.am .
  autoreconf --force --install
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  install -D -m644 LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}
