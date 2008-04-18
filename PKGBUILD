# $Id$
# Maintainer: damir <damir@archlinux.org>
# Contributer: Gan Lu <rhythm.gan@gmail.com>

pkgname=scim
pkgver=1.4.7
pkgrel=1
pkgdesc="A Input Method development platform"
arch=("i686" "x86_64")
depends=('gtk2' 'gcc')
makedepends=('intltool')
install=scim.install
url="http://www.scim-im.org/projects/scim"
license=GPL
source=(http://puzzle.dl.sourceforge.net/sourceforge/scim/$pkgname-$pkgver.tar.gz \
        scim.install)

build() {
     cd $startdir/src/$pkgname-$pkgver
        ./configure --prefix=/usr\
                    --sysconfdir=/etc\
                    --with-gnu-ld \
                    --with-x \
                    --disable-config-gconf \
                    --disable-static \
                    # --enable-debug --enable-tests # use with --nostrip
        make || return 1
        make DESTDIR=$startdir/pkg install
     # say goodbye to .la files:
     find $startdir/pkg -name '*.la' -exec rm {} \;
}

