# $Id: PKGBUILD,v 1.10 2005/06/13 20:15:31 aurelien Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>
pkgname=patchutils
pkgver=0.2.31
pkgrel=1
pkgdesc="A small collection of programs that operate on patch files"
url="http://cyberelk.net/tim/patchutils/"
depends=('perl')
source=(http://cyberelk.net/tim/data/patchutils/stable/$pkgname-$pkgver.tar.bz2)
md5sums=('3aa902cb7a57a4aa09427de603ebf17b')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
