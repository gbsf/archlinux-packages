# $Id: PKGBUILD,v 1.7 2006/01/07 20:02:18 aaron Exp $
# Maintainer: Aaron Griffin <aaron@archlinux.org>
# Contributor: Eddie Lozon <almostlucky@attbi.com>

pkgname=gtk-theme-switch
pkgver=1.0.1
pkgrel=2
pkgdesc="Gtk theme switcher"
depends=('gtk')
source=(http://www.muhri.net/$pkgname-$pkgver.tar.gz)
url="http://muhri.net/nav.php3?node=gts"
md5sums=('a1ce98489cbe410c5483e155e5834c46')

build() {
  cd $startdir/src/$pkgname-$pkgver
  make || return 1
  mkdir -p $startdir/pkg/usr/bin
  cp switch $startdir/pkg/usr/bin/switch
}
