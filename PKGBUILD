# $Id: PKGBUILD,v 1.4 2008/02/07 20:05:57 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libgnomeprint
pkgver=2.18.3
pkgrel=1
pkgdesc="Printing routines for GNOME"
arch=(i686 x86_64)
license=('LGPL' 'GPL')
depends=('pango>=1.18.4' 'libart-lgpl' 'libxml2>=2.6.30' 'libgnomecups>=0.2.3')
makedepends=('perlxml' 'pkgconfig')
replaces=('libgnomeprint-cups')
conflicts=('libgnomeprint-cups')
url="http://www.gnome.org"
options=('!libtool')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.18/${pkgname}-${pkgver}.tar.bz2)
md5sums=('cfa7dc988ba5f7f360b68edd33685a27')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
