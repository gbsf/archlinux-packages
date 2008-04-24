#$Id$
# Maintainer: Jan de Groot <jgc@arclinux.org>

pkgname=gnome-mount
pkgver=0.8
pkgrel=1
pkgdesc="GNOME mount program"
arch=(i686 x86_64)
license=('GPL')
url="http://hal.freedesktop.org/"
depends=('gnome-keyring>=2.22.1' 'libnotify>=0.4.4')
makedepends=('pkgconfig' 'perlxml' 'nautilus>=2.22.2')
options=('!libtool' '!emptydirs')
groups=('gnome')
install=gnome-mount.install
source=(http://hal.freedesktop.org/releases/${pkgname}-${pkgver}.tar.gz)
md5sums=('562ec9d0196e5e000bdd249a04a3aa6a')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static || return 1
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1

  install -m755 -d ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
