# $Id: PKGBUILD,v 1.4 2007/11/08 02:02:16 travis Exp $
# Maintainer: Travis Willard <travis@archlinux.org> 
# Contributor: Paul Mattal <paul@mattal.com>

pkgname=imwheel
pkgver=1.0.0pre12
pkgrel=3
pkgdesc="Mouse Wheel Tool for XFree86/Xorg"
arch=(i686 x86_64)
url="http://imwheel.sourceforge.net"
license=('GPL')
depends=(libxtst libxmu)
backup=(etc/X11/imwheel/imwheelrc)
source=(http://dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.gz etcdir-install.patch)
md5sums=('21d81db739ae95d96f9b650f7b826a14' '51359d20eb2a95136564db2d32e3ec38')

build() {
  # patch to fix buggy location of ETCDIR
  cd $startdir/src
  patch -p0 <etcdir-install.patch

  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
