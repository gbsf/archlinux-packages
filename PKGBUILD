# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
# $Id: PKGBUILD,v 1.5 2005/12/19 18:25:39 jason Exp $
# Maintainer: Jason Chu <jason@archlinux.org>
pkgname=jhead
pkgver=2.4
pkgrel=1
pkgdesc="EXIF JPEG info parser and thumbnail remover"
url="http://www.sentex.net/~mwandel/jhead/"
depends=(glibc)
conflicts=()
backup=()
install=
source=($url/$pkgname-$pkgver.tar.gz)
md5sums=('410d01fd323ce8733480816de3621cc0')

build() {
  cd $startdir/src/$pkgname-$pkgver
  mkdir -p $startdir/pkg/usr/bin
  mkdir -p $startdir/pkg/usr/man/man1
  make || return 1
  cp $pkgname $startdir/pkg/usr/bin
  cp $pkgname.1.gz $startdir/pkg/usr/man/man1

}
