# $Id$
# Contributor : Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: dale <dale@archlinux.org>

pkgname=fortune-mod-chalkboard
pkgver=0
pkgrel=2
pkgdesc="A collection --- fortune cookies --- of Bart Simpson's chalkboard-writings from the opening credits of episodes of the television show The Simpsons. "
depends=(fortune-mod)
source=(http://www.splitbrain.org/Fortunes/simpsons/fortune-simpsons-chalkboard.tgz)
md5sums=('1602ec6df3336a7e01f857b8419c8df1')
url="http://www.splitbrain.org/index.php?x=.%2FFortunes%2Fsimpsons-chalkboard"

build() {
  cd $startdir/src/fortune-simpsons-chalkboard
  mkdir -p $startdir/pkg/usr/share/fortune/
  cp $startdir/src/fortune-simpsons-chalkboard/chalkboard* $startdir/pkg/usr/share/fortune
  chmod 644 $startdir/pkg/usr/share/fortune/*
}
