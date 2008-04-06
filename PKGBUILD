# $Id: PKGBUILD,v 1.9 2008/03/02 17:49:46 tpowa Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=facile
pkgver=1.1
pkgrel=8
pkgdesc="A Functional Constraint Library"
arch=(i686 x86_64)
url="http://www.recherche.enac.fr/opti/facile/"
license="LGPL"
makedepens=('ocaml')
depends=()
source=(http://www.recherche.enac.fr/opti/facile/distrib/$pkgname-$pkgver.tar.gz)
md5sums=('ab673e1fc0859a42bcb639a02c2d7e9e')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure
  make || return 1
  mkdir -p $startdir/pkg/usr/lib/ocaml/facile
  cd src
  install -D -m 644 facile.cmxa facile.cmi facile.cma facile.a $startdir/pkg/usr/lib/ocaml/facile
}
