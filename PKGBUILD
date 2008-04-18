# $Id$
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libxt
pkgver=1.0.5
pkgrel=1
pkgdesc="X11 toolkit intrinsics library"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=('libsm' 'libx11')
makedepends=('pkgconfig')
options=('nolibtool')
source=(${url}/releases/individual/lib/libXt-${pkgver}.tar.bz2)
md5sums=('f3bdd67785ace8cd0b23249e9d8c9975')

build() {
  cd ${startdir}/src/libXt-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --build=${CHOST} --host=${CHOST} \
	      --disable-install-makestrs
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
