# $Id: PKGBUILD,v 1.6 2007/12/10 20:00:13 damir Exp $
# Maintainer: Damir Perisa <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>

pkgname=linux_logo
pkgver=5.02
pkgrel=1
pkgdesc="Text-based logo and system information program"
arch=('i686' 'x86_64') 
url="http://www.deater.net/weave/vmwprod/linux_logo"
license=('GPL')
depends=('glibc')
makedepends=('coreutils' 'gcc')
source=(http://www.deater.net/weave/vmwprod/linux_logo/$pkgname-$pkgver.tar.gz)

build() {
  cd "$startdir/src/$pkgname-$pkgver"
  ./configure --prefix=$startdir/pkg/usr
  make || return 1
  make DESTDIR="$startdir/pkg" install
}
