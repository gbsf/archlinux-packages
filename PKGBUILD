# $Id: PKGBUILD,v 1.30 2007/12/25 14:39:26 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=poppler
pkgver=0.8.0
_dataver=0.2.0
pkgrel=1
pkgdesc="PDF rendering library based on xpdf 3.0"
arch=(i686 x86_64)
license=('GPL' 'custom')
depends=('libjpeg' 'gcc-libs>=4.3.0' 'cairo>=1.6.4' 'libxml2>=2.6.31' 'fontconfig>=2.5.0')
makedepends=('pkgconfig')
options=('!libtool')
url="http://poppler.freedesktop.org/"
source=(http://poppler.freedesktop.org/${pkgname}-${pkgver}.tar.gz
	http://poppler.freedesktop.org/poppler-data-${_dataver}.tar.gz
	poppler-0.6.1-cairoheaders.patch)
md5sums=('1a3ea3000d3446a97366c37b876979f4'
         'b7f98e84a4d2a2c794271d746ec7ee0b'
         'ce8f07aaca7abfafdca604582a9f8398')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ${startdir}/src/poppler-0.6.1-cairoheaders.patch || return 1  
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --enable-cairo-output \
	      --enable-xpdf-headers \
	      --enable-libjpeg --enable-zlib \
	      --disable-poppler-qt4 \
	      --disable-poppler-glib \
	      --disable-poppler-qt \
	      --disable-gtk-test
  make || return 1
  make DESTDIR=${startdir}/pkg install

  cd ${startdir}/src/poppler-data-${_dataver}
  make prefix=/usr DESTDIR=${startdir}/pkg install

  mkdir -p ${startdir}/pkg/usr/share/licenses/${pkgname}
  install -m644 COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}/
}
