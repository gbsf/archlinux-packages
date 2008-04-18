# $Id$
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libdmx
pkgver=1.0.2
pkgrel=1
pkgdesc="X11 Distributed Multihead extension library"
url="http://xorg.freedesktop.org/"
depends=(dmxproto libxext)
makedepends=(pkgconfig)
source=(${url}/releases/individual/lib/${pkgname}-${pkgver}.tar.bz2)
md5sums=(4d866967210d06098fc9f302ed4c79b1)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr \
              --build=${CHOST} --host=${CHOST}
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}

