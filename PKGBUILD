# $Id: PKGBUILD,v 1.41 2008/03/12 23:48:37 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gtkhtml
pkgver=3.18.0
pkgrel=1
pkgdesc="A lightweight HTML renderer/editor widget"
arch=(i686 x86_64)
license=('GPL')
depends=('libgnomeui>=2.22.01' 'gnome-icon-theme>=2.22.0')
makedepends=('pkgconfig' 'perlxml')
url="http://www.gnome.org"
options=('!libtool')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/3.18/${pkgname}-${pkgver}.tar.bz2)
md5sums=('ec541b078ea9fbb1dd93f77075f77bd8')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --libexecdir=/usr/lib/gtkhtml \
              --localstatedir=/var --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
