# $Id: PKGBUILD,v 1.25 2007/11/12 16:50:58 roman Exp $
# Maintainer: Roman Kyrylych <roman@archlinux.org>
# Contributor: Brice Carpentier <brice@dlfp.org>

pkgname=gossip
pkgver=0.28
pkgrel=2
pkgdesc="A GNOME Jabber client"
arch=('i686' 'x86_64')
url="http://www.imendio.com/projects/gossip/"
license=('GPL')
depends=('libxss' 'libnotify>=0.4.4' 'libgnomeui>=2.18.1-2' 'loudmouth>=1.2.3' \
         'aspell' 'iso-codes' 'gconf>=2.18.0.1-4' 'hicolor-icon-theme' \
         'gnome-keyring')
makedepends=('perlxml' 'gnome-doc-utils>=0.10.3' 'gnome-panel>=2.18.1')
install=gossip.install
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/${pkgver}/${pkgname}-${pkgver}.tar.bz2
        org.gnome.Gossip.service)
md5sums=('2c364a3fffec0fb57c71b6dbab6fa53a'
         '7ed8dc152e4bb36bdb73e7e8e56b22b9')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}

  export CFLAGS="${CFLAGS} -DLM_NO_DEBUG"
  ./configure --prefix=/usr --sysconfdir=/etc \
              --libexecdir=/usr/lib/gossip \
              --localstatedir=/var \
              --disable-scrollkeeper \
              --enable-libnotify=yes \
              --enable-dbus=yes \
              --enable-gnome-keyring=yes \
              --enable-aspell=yes
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 \
       DESTDIR=${startdir}/pkg install

  mkdir -p ${startdir}/pkg/usr/share/gconf/schemas  
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas \
    ${startdir}/pkg/etc/gconf/schemas/*.schemas
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas

  install -Dm644 ${startdir}/src/org.gnome.Gossip.service \
    ${startdir}/pkg/usr/share/dbus-1/services/org.gnome.Gossip.service
}
