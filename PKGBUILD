# $Id: PKGBUILD,v 1.11 2006/02/05 00:08:41 kevin Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Nick Martens (nick1337@xs4all.nl)

pkgname=ed2k-gtk-gui
pkgver=0.6.4
pkgrel=2
pkgdesc="A GUI for the eDonkey2000 and Overnet file-sharing programs"
depends=('gtk2' 'gnet')
url="http://ed2k-gtk-gui.sourceforge.net/index.shtml"
source=(http://dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.gz)
md5sums=('c51ddfc64ba39e2bb5383a95afe72c53')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  /usr/bin/make || return 1
  /usr/bin/make prefix=$startdir/pkg/usr install
}
# vim: ts=2 sw=2 et ft=sh
