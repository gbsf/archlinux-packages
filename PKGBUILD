# $Id$
# Contributor : Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: dale <dale@archlinux.org>

pkgname=fortune-mod-discworld
pkgver=0
pkgrel=2
pkgdesc="A collection --- fortune cookies --- of quotes from the "Discworld" novels by Terry Pratchett."
depends=(fortune-mod)
#source=(http://www.splitbrain.org/Fortunes/discworld/fortune-discworld.tgz)
source=("http://www.splitbrain.org/_media/projects/fortunes/fortune-discworld.tgz?id=projects%3Afortunes%3Adiscworld&cache=cache")
md5sums=('4e00763163ae6ca76f7f23e435edbe08')
url="http://www.splitbrain.org/index.php?x=.%2FFortunes%2Fdiscworld"

build() {
  cd $startdir/src/fortune-discworld
  mkdir -p $startdir/pkg/usr/share/fortune
  cp $startdir/src/fortune-discworld/discworld* $startdir/pkg/usr/share/fortune
  chmod 644 $startdir/pkg/usr/share/fortune/*
}
