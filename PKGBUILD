# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gtksourceview
pkgver=1.8.5
pkgrel=2
pkgdesc="A text widget adding syntax highlighting and more to GNOME"
arch=(i686 x86_64)
license=('GPL')
depends=('libgnomeprint>=2.18.0' 'gtk2>=2.10.11')
makedepends=('perlxml' 'libgnomeprintui>=2.18.0' 'pkgconfig')
options=('nolibtool')
url="http://www.gnome.org"
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/1.8/${pkgname}-${pkgver}.tar.bz2)
md5sums=('de67df2944c1cccbc2d0b4a738e11050')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
