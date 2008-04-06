# $Id: PKGBUILD,v 1.1 2006/05/15 21:32:34 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Mark Rosenstand <mark@borkware.net>

pkgname=libifp
pkgver=1.0.0.2
pkgrel=1
pkgdesc="General-purpose library-driver for iRiver's iFP portable audio players."
url="http://ifp-driver.sourceforge.net/libifp/"
license=('GPL')
depends=('libusb')
source=(http://dl.sourceforge.net/sourceforge/ifp-driver/$pkgname-$pkgver.tar.gz)
md5sums=('d4114794b13bd32b6b767e0870df6fc4')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr \
    --with-libusb

  make || return 1
  make DESTDIR=$startdir/pkg install

  # libtool slay
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
