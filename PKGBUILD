# $Id: PKGBUILD,v 1.4 2006/03/19 00:47:25 tobias Exp $
# Maintainer: tobias <tobias@archlinux.org>

pkgname=libmemcache
pkgver=1.4.0.rc2
pkgrel=1
pkgdesc="A memcache implementation"
url="http://people.freebsd.org/~seanc/libmemcache/"
depends=('glibc')
source=(http://people.freebsd.org/~seanc/libmemcache/$pkgname-$pkgver.tar.bz2)
md5sums=('402c957cd71538c07a263542eeb513d1')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
