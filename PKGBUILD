# $Id: PKGBUILD,v 1.2 2005/09/30 18:33:32 tobias Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
pkgname=opensp
pkgver=1.5.1
pkgrel=1
pkgdesc="A library and a set of tools for validating, parsing and manipulating SGML and XML documents."
depends=('gcc')
url="http://openjade.sourceforge.net/"
source=(http://download.sourceforge.net/openjade/OpenSP-$pkgver.tar.gz opensp-gcc34.patch)

build() {
  cd $startdir/src/OpenSP-$pkgver
  patch -Np1 -i ../opensp-gcc34.patch || return 1
  ./configure --prefix=/usr \
     --disable-nls \
     --enable-http \
     --enable-default-catalog=/etc/sgml/catalog:/etc/xml/catalog \
     --enable-default-search-path=/usr/share/sgml:/usr/share/xml \
     --enable-xml-messages
  make || return 1
  make prefix=$startdir/pkg/usr install
  find $startdir/pkg -name '*\.la' -exec rm {} \;
}
