# $Id: PKGBUILD,v 1.3 2003/11/06 08:27:08 dorphell Exp $
# Contributor : Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: dale <dale@archlinux.org>

pkgname=fortune-mod-starwars
pkgver=0
pkgrel=2
pkgdesc="A collection --- fortune cookies --- from Starwars. "
depends=(fortune-mod)
source=(http://www.splitbrain.org/Fortunes/starwars/fortune-starwars.tgz)
md5sums=('2f4443470a5d7bcb7c5efde501f8e6f5')
url="http://www.splitbrain.org/index.php?x=.%2FFortunes%2Fstarwars"

build() {
  cd $startdir/src/starwars
  mkdir -p $startdir/pkg/usr/share/fortune
  cp $startdir/src/fortune-starwars/starwars* $startdir/pkg/usr/share/fortune
  chmod 644 $startdir/pkg/usr/share/fortune/*
}
