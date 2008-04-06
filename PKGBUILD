# $Id: PKGBUILD,v 1.33 2008/03/14 17:57:04 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gcalctool
pkgver=5.22.0
pkgrel=1
pkgdesc="GNOME Scientific calculator"
arch=(i686 x86_64)
license=('GPL')
depends=('gconf>=2.22.0' 'libglade>=2.6.2')
makedepends=('perlxml' 'pkgconfig' 'gnome-doc-utils>=0.12.2')
groups=('gnome-extra')
options=(!emptydirs)
url="http://www.gnome.org"
install=gcalctool.install
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/5.22/${pkgname}-${pkgver}.tar.bz2)
md5sums=('037ef812fe5562b4dda55b9eea82b77b')
	
build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-scrollkeeper || return 1
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1

  install -m755 -d ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
