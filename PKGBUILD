# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gnome-settings-daemon
pkgver=2.22.1
pkgrel=1
pkgdesc="The GNOME Settings daemon"
arch=(i686 x86_64)
license=('GPL')
depends=('libgnomekbd>=2.22.0' 'libxxf86misc' 'gstreamer0.10-base>=0.10.19' 
	 'gnome-desktop>=2.22.1')
makedepends=('perlxml' 'pkgconfig')
conflicts=('gnome-control-center<2.22.0')
options=(!emptydirs !libtool)
install=gnome-settings-daemon.install
url="http://www.gnome.org"
groups=('gnome')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2)
md5sums=('959d0d289ed81f950004fa64dbcff89d')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
 	--libexecdir=/usr/bin --disable-static || return 1

  make || return 1
  make DESTDIR=${startdir}/pkg GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 install || return 1

  install -d -m755 ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
