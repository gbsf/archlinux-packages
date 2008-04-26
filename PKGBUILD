# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=yelp
pkgver=2.22.1
pkgrel=1
pkgdesc="A help browser for GNOME"
arch=(i686 x86_64)
depends=('xulrunner>=1.8.1.12' 'libgnomeui>=2.22.1' 'gnome-doc-utils>=0.12.2' 'startup-notification>=0.9' 'libxslt')
makedepends=('perlxml' 'pkgconfig')
groups=('gnome')
license=('GPL')
options=('!emptydirs')
url="http://www.gnome.org"
install=yelp.install
source=(http://ftp.gnome.org/pub/gnome/sources/yelp/2.22/yelp-${pkgver}.tar.bz2)
md5sums=('a292c6712bb820e6aa2ade84ebdc9609')

build() {
  cd ${startdir}/src/yelp-${pkgver}
 ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --enable-man --with-search=basic || return 1
  make LDFLAGS+="-R /usr/lib/xulrunner" || return 1
  make -j1 GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1

  install -m755 -d ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
