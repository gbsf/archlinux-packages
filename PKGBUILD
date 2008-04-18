# $Id$
# Maintainer: Roman Kyrylych <roman@archlinux.org>
# Contributor: Christian Theune <ct@gocept.com>

pkgname=gnotime
pkgver=2.2.3
pkgrel=2
pkgdesc="Gnome Time Tracker"
arch=('i686' 'x86_64')
license=('GPL')
url="http://gttr.sourceforge.net/"
depends=('gtkhtml>=3.14.1-2' 'guile>=1.8.1' 'qof' 'gconf>=2.18.0.1-4'
         'desktop-file-utils')
makedepends=('perlxml' 'gnome-doc-utils>=0.11.2')
source=(http://downloads.sourceforge.net/gttr/gnotime-${pkgver}.tar.gz)
install=gnotime.install
md5sums=('067c3579411cd98e0b18fec0b36475a6')
options=('!libtool' '!emptydirs')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}

  sed -i -e 's/3.8/3.14/g' configure
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static --disable-scrollkeeper
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install

  mkdir -p ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas \
    ${startdir}/pkg/etc/gconf/schemas/*.schemas
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas

  chmod +x ${startdir}/pkg/usr/bin/gnotime-remote
}
