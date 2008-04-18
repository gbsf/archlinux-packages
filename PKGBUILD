# $Id$
# Maintainer: damir <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
pkgname=prekin
pkgver=6.40.050324
pkgrel=2
pkgdesc="Prekin prepares molecular kinemages (input files for Mage) from PDB-format coordinate files, using either a choice of built-in scripts or a flexible user specification of options."
url="http://kinemage.biochem.duke.edu/software/software1.html\#prekin"
depends=('mage>=6.40' 'libxmu' 'lesstif')
source=(ftp://kinemage.biochem.duke.edu/pub/software/prekin/$pkgname.$pkgver.src.tgz)

build() {
  cd $startdir/src/$pkgname.$pkgver
  make -f Makefile.linux dynamic || return 1
  mkdir -p $startdir/pkg/usr/bin
  cp prekin $startdir/pkg/usr/bin
}
