# $Id: PKGBUILD,v 1.7 2007/11/28 07:21:23 aaron Exp $
# Maintainer: Aaron Griffin <aaron@archlinux.org>

pkgname=libdownload
pkgver=1.3
pkgrel=1
pkgdesc="URL based download library, forked from libfetch"
arch=('i686' 'x86_64')
license=('BSD')
groups=('base')
depends=('glibc')
source=(http://phraktured.net/libdownload/dist/$pkgname-$pkgver.tar.gz)
url="http://phraktured.net/libdownload"
md5sums=('77e10293fd4262745110eb423a10490c')

build() {
  cd $startdir/src/${pkgname}-${pkgver}
  [ "$CARCH" = "x86_64" ] && sed -i -e "s/-O2\ -pipe/-O2\ -pipe\ \-fPIC/g" Makefile
  make || return 1
  make DESTDIR=$startdir/pkg install
}
