# $Id$
# Maintainer: roberto <roberto@archlinux.org>
pkgname=camsource
pkgver=0.7.0
pkgrel=3
pkgdesc="Grabs images from a v4l device and makes them available to various plugins for processing or handling."
depends=('libxml2' 'libjpeg')
source=(http://heanet.dl.sourceforge.net/$pkgname/$pkgname-$pkgver.tar.bz2 \
	mod_handle.c.patch)
backup=(etc/camsource.conf)
url="http://camsource.sourceforge.net/"
md5sums=('ffd824f13f99011984399fc3b7526c71' 'a8fabaf271b6f575c6e957573908c529')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np0 -i $startdir/src/mod_handle.c.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc
  make || return 1
  make DESTDIR=$startdir/pkg install
  mv $startdir/pkg/etc/camsource.conf.example $startdir/pkg/etc/camsource.conf
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
