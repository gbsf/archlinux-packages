# $Id$
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libxp
pkgver=1.0.0
pkgrel=1
pkgdesc="X11 X Print Library"
url="http://xorg.freedesktop.org/"
depends=('libxext' 'printproto')
makedepends=('pkgconfig')
_xorg=X11R7.0-RC4
_relname=libXp
source=(${url}/releases/${_xorg}/everything/${_relname}-${pkgver}.tar.bz2)

build() {
  cd ${startdir}/src/${_relname}-${pkgver}
  ./configure --prefix=/usr \
              --host=${CHOST} --build=${CHOST}
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  find ${startdir}/pkg -name '*.la' -exec rm {} \;
}

