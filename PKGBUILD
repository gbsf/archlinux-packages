# $Id: PKGBUILD,v 1.3 2008/03/27 03:24:23 aaron Exp $
# Maintainer: Aaron Griffin <aaron@archlinux.org>
# Contributor: David Moore <davidm@sjsoft.com>

pkgname=slib
pkgver=3b1
pkgrel=1
pkgdesc="A library providing functions for Scheme implementations"
arch=(i686 x86_64)
url="http://swissnet.ai.mit.edu/~jaffer/SLIB.html"
options=('!libtool' 'emptydirs')
license=("custom")
#Only guile support for now. In the future we need to determine how to generate
#the catalog files via makedepends - see slib.install
depends=('guile')
source=(http://swiss.csail.mit.edu/ftpdir/scm/$pkgname-$pkgver.zip)
install=slib.install
md5sums=('9622df4aba2fde24eeb4456d97c5add1')

build() {
  cd $startdir/src/
  [ -d $pkgname ] || bsdtar -x $pkgname-$pkgver.zip
  cd $pkgname

  sed -i 's|SCHEME_LIBRARY_PATH=\$(DESTDIR)|SCHEME_LIBRARY_PATH=|' Makefile
  make prefix=/usr/ man1dir=/usr/share/man/man1 \
    DESTDIR=$startdir/pkg install || return 1

  install -D -m644 $startdir/src/slib/COPYING \
     $startdir/pkg/usr/share/licenses/$pkgname/COPYING

  mkdir -p $startdir/pkg/usr/share/guile/site/
  ln -s /usr/lib/slib $startdir/pkg/usr/share/guile/site/
}
