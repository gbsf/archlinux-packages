# $Id: PKGBUILD,v 1.5 2004/07/15 06:30:05 jason Exp $
# Maintainer: Jason Chu <jason@archlinux.org>

pkgname=gtkam
pkgver=0.1.12
pkgrel=1
pkgdesc="A graphical front-end to gPhoto for GNOME"
url="http://gphoto.sourceforge.net/proj/gtkam/"
depends=('libgphoto2' 'libbonoboui' 'libgnomeui')
makedepends=('gimp')
conflicts=()
backup=()
install=gtkam.install
source=(http://dl.sourceforge.net/sourceforge/gphoto/$pkgname-$pkgver.tar.gz gtkam.patch)
md5sums=('622170d414718a5ae11487a6af1e47cd' '7be5e54d7cd79418a33826574e98eba9')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -p1 < ../gtkam.patch
  ./configure --prefix=/usr --sysconfdir=/etc
  make DESTDIR=$startdir/pkg install
}
