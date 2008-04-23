# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=evince
pkgver=2.22.1.1
pkgrel=2
pkgdesc="Simply a document viewer"
url="http://www.gnome.org"
arch=(i686 x86_64)
license=('GPL')
depends=('libspectre>=0.2.0' 'gsfonts' 'poppler-glib>=0.8.0' 'libdjvu>=3.5.20' 'gnome-icon-theme>=2.22.0' 't1lib' 'libglade>=2.6.2' 'gnome-keyring>=2.22.1')
makedepends=('perlxml' 'gnome-doc-utils>=0.12.2' 'nautilus>=2.22.2' 'pkgconfig' 'tetex')
install=evince.install
options=('!libtool' '!emptydirs')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2)
replaces=('gpdf')
groups=('gnome-extra')
md5sums=('568ff7211a185d71d0e9de15a07f4987')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --with-print=gtk --enable-nautilus \
	      --enable-pdf --enable-tiff \
	      --enable-djvu --enable-dvi \
	      --enable-t1lib --enable-pixbuf \
	      --enable-comics --enable-impress \
	      --disable-scrollkeeper --without-libgnome || return 1
  make || return 1
  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR=${startdir}/pkg install || return 1
  
  install -m755 -d ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas || return 1
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
