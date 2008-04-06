#$Id: PKGBUILD,v 1.24 2008/03/23 16:43:05 jgc Exp $
#Maintainer: Jan De Groot <jgc@archlinux.org>

pkgname=gnome-keyring
pkgver=2.22.0
pkgrel=2
pkgdesc="GNOME Password Management daemon"
arch=(i686 x86_64)
license=('GPL' 'LGPL')
depends=('gconf>=2.22.0' 'hal>=0.5.10')
makedepends=('perlxml' 'pkgconfig')
options=('!libtool' '!emptydirs')
url="http://www.gnome.org"
install=gnome-keyring.install
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2
	gnome-keyring.service)
md5sums=('d27c5bf11579069eb694f93b71364bb4' '16062d82eb8062201fb24f3e0ceb49a6')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --libexecdir=/usr/lib/gnome-keyring \
	      --with-pam-dir=/lib/security || return 1
  make || return 1
  make -j1 GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1

  install -m755 -d ${startdir}/pkg/usr/share/dbus-1/services
  install -m644 ${startdir}/src/gnome-keyring.service ${startdir}/pkg/usr/share/dbus-1/services/ || return 1
     
  mkdir -p ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
