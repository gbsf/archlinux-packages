# $Id: PKGBUILD,v 1.20 2007/09/23 19:56:54 jgc Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=ghex
pkgver=2.22.0
pkgrel=1
pkgdesc="A simple binary editor for the Gnome desktop"
arch=(i686 x86_64)
license=('GPL')
url="http://www.gnu.org/directory/ghex.html"
depends=('libgnomeui>=2.22.1' 'libgnomeprintui>=2.18.2')
makedepends=('perlxml' 'pkgconfig')
options=('!libtool' '!emptydirs')
install=ghex.install
source=(http://ftp.gnome.org/pub/GNOME/sources/ghex/2.22/${pkgname}-${pkgver}.tar.bz2)
md5sums=('6f1ee7a56f7dd04bfba5ee74a639948a')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var || return 1
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1

  install -d -m755 ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
