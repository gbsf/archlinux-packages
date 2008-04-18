# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=poppler-glib
pkgver=0.8.0
pkgrel=1
pkgdesc="Poppler glib bindings"
arch=(i686 x86_64)
license=('GPL')
depends=('gtk2>=2.12.9-2' 'poppler>=0.8.0')
makedepends=('pkgconfig')
options=('!libtool')
url="http://poppler.freedesktop.org/"
source=(http://poppler.freedesktop.org/poppler-${pkgver}.tar.gz
	poppler-0.6-bindings.patch)
md5sums=('1a3ea3000d3446a97366c37b876979f4'
         '4255424fcf2c29fe3cae9cb14a671da6')

build() {
  cd ${startdir}/src/poppler-${pkgver}
  patch -Np1 -i ${startdir}/src/poppler-0.6-bindings.patch || return 1
  libtoolize --force --copy || return 1
  
  AT_M4DIR="m4" autoreconf || return 1
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --enable-zlib \
	      --enable-libjpeg \
	      --enable-cairo-output \
	      --enable-poppler-glib \
	      --disable-poppler-qt4 \
	      --disable-poppler-qt || return 1
  pushd poppler || return 1
  make libpoppler-cairo.la || return 1
  popd 
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
