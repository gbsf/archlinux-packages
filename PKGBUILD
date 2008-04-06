# $Id: PKGBUILD,v 1.14 2006/05/28 00:38:20 jason Exp $
# Contributer: Jason Chu <jason@archlinux.org>
# Maintainer: Jason Chu <jason@archlinux.org>

pkgname=speex
pkgver=1.1.12
pkgrel=1
pkgdesc="A free codec for free speech"
depends=('libogg')
source=(http://downloads.us.xiph.org/releases/$pkgname/$pkgname-$pkgver.tar.gz)
md5sums=('1bd6cdf3a0ebabf818cd72a3401e2610')
url="http://www.speex.org/"

build() {
   cd $startdir/src/speex-$pkgver
   ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var
   make || return 1
   make DESTDIR=$startdir/pkg install
   #to fix kde detection
   cp $startdir/pkg/usr/include/speex/* $startdir/pkg/usr/include/
   #libtoolslay
   find $startdir/pkg -name '*.la' -exec rm {} \;
}
