# $Id: PKGBUILD,v 1.4 2008/03/14 18:06:09 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gtksourceview2
pkgver=2.2.0
pkgrel=1
pkgdesc="A text widget adding syntax highlighting and more to GNOME"
arch=(i686 x86_64)
license=('GPL')
depends=('gtk2>=2.12.9' 'libxml2>=2.6.31')
makedepends=('perlxml' 'pkgconfig')
options=('!libtool')
url="http://www.gnome.org"
source=(http://ftp.gnome.org/pub/gnome/sources/gtksourceview/2.2/gtksourceview-${pkgver}.tar.bz2)
md5sums=('f794b2bfea6f56bbdb6da494b5335f74')

build() {
  cd ${startdir}/src/gtksourceview-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
