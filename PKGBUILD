# $Id: PKGBUILD,v 1.43 2008/03/25 23:44:42 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
 
pkgname=rhythmbox
pkgver=0.11.5
pkgrel=2
pkgdesc="An iTunes-like music player/libary"
arch=(i686 x86_64)
license=('GPL')
url="http://www.rhythmbox.org"
depends=( 'libgpod>=0.6.0' 'libsoup>=2.4.0' 'gnome-media>=2.22.0'
          'totem-plparser>=2.22.1' 'musicbrainz>=2.1.5'
	  'libsexy>=0.1.11' 'gstreamer0.10-mad' 'nautilus-cd-burner>=2.22.0'
	  'gstreamer0.10-gnomevfs' 'gstreamer0.10-python>=0.10.9'
	  'desktop-file-utils' 'gnome-python>=2.22.0' 'libmtp>=0.2.4'
	  'lirc-utils')
makedepends=('perlxml' 'pkgconfig' 'gnome-doc-utils>=0.12.2' 'xulrunner>=1.8.1.12') 
options=('!libtool' '!emptydirs')
install=rhythmbox.install
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/0.11/${pkgname}-${pkgver}.tar.bz2
	rb-shell.patch)
md5sums=('967440dd984ec724e7e7992d5bd57bbd' '9ff9492fe5a6580620ed4a177abc6296')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ${startdir}/src/rb-shell.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc \
              --libexecdir=/usr/lib/rhythmbox \
              --localstatedir=/var --disable-static \
	      --with-cd-burner \
	      --with-playback=gstreamer-0-10 --enable-daap \
              --with-mdns=avahi --disable-scrollkeeper \
              --enable-python
  
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1
  
  install -m755 -d ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas

  # fix missing artdisplay artwork
  install -m 644 plugins/artdisplay/rhythmbox-missing-artwork.svg ${startdir}/pkg/usr/lib/rhythmbox/plugins/artdisplay/
}
