# $Id: PKGBUILD,v 1.29 2008/03/12 21:16:12 jgc Exp $
# Maintainer: Jan de Groot <jan@archlinux.org>

pkgname=gnome-menus
pkgver=2.22.0
pkgrel=1
pkgdesc="GNOME menu specifications"
arch=(i686 x86_64)
depends=('pygtk>=2.12.1' 'archlinux-menus' 'glib2>=2.16.1')
makedepends=('perlxml' 'pkgconfig')
options=('!libtool')
license=('GPL' 'LGPL')
url="http://www.gnome.org"
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2
	menus.patch)
md5sums=('b504e4ea92fcf5b1c2817d682ac5f61c' '37b1021887f60a9cead67172e51a3a18')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np0 -i ${startdir}/src/menus.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --enable-inotify \
	      --disable-static || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
