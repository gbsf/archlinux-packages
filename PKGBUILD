# $Id: PKGBUILD,v 1.2 2008/01/26 17:05:11 tpowa Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=poppler-qt3
pkgver=0.6.3
pkgrel=1
pkgdesc="Poppler Qt3 bindings"
arch=(i686 x86_64)
license=('GPL')
depends=('qt3>=3.3.8' 'poppler>=0.6.3')
makedepends=('pkgconfig')
options=('!libtool')
url="http://poppler.freedesktop.org/"
source=(http://poppler.freedesktop.org/poppler-${pkgver}.tar.gz
	poppler-0.6-bindings.patch)

build() {
  . /etc/profile.d/qt3.sh
  
  cd ${startdir}/src/poppler-${pkgver}

  patch -Np1 -i ${startdir}/src/poppler-0.6-bindings.patch || return 1
  
  AT_M4DIR="m4" autoreconf
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --enable-zlib \
	      --enable-libjpeg \
	      --enable-cairo-output \
	      --enable-poppler-qt \
	      --disable-poppler-glib \
	      --disable-gtk-test \
	      --disable-poppler-qt4
  sed -i -e 's|^LDFLAGS =|LDFLAGS = -L/opt/qt/lib -lqt-mt|' qt/Makefile
  pushd poppler || return 1
  make libpoppler-cairo.la || return 1
  popd
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
md5sums=('a585677188cd56a090c4dc3357e03a95'
         '4255424fcf2c29fe3cae9cb14a671da6')
