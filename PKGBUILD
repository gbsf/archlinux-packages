# $Id$
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=sed
pkgver=4.1.5
pkgrel=3
pkgdesc="GNU stream editor"
arch=(i686 x86_64)
url="http://www.gnu.org/software/sed"
license=('GPL')
groups=('base')
depends=('glibc')
source=(ftp://ftp.gnu.org/pub/gnu/sed/$pkgname-$pkgver.tar.gz)
md5sums=('7a1cbbbb3341287308e140bd4834c3ba')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=
  make || return 1
  make prefix=$startdir/pkg/usr install
  mv $startdir/pkg/usr/bin $startdir/pkg/
}
