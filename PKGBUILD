# $Id$
# Maintainer: damir <damir@archlinux.org>
# Contributor: damir <damir@archlinux.org>

origname=gqview
pkgname=gqview-devel
provides=('gqview')
conflicts=('gqview')
pkgver=2.1.5
pkgrel=1
pkgdesc="An image browser and viewer [devel]"
depends=('gtk2' 'lcms')
source=(http://puzzle.dl.sourceforge.net/sourceforge/$origname/$origname-$pkgver.tar.gz konqgqview.desktop)
url="http://$origname.sourceforge.net/"

build() {
  cd $startdir/src/$origname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  rm -rf $startdir/pkg/usr/share
  mkdir -p $startdir/pkg/opt/kde/share/apps/konqueror/servicemenus/
  cp $startdir/src/konqgqview.desktop $startdir/pkg/opt/kde/share/apps/konqueror/servicemenus/
}

