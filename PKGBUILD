# $Id$
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=scrnsaverproto
pkgver=1.1.0
pkgrel=1
pkgdesc="X11 Screen Saver extension wire protocol"
url="http://xorg.freedesktop.org/"
source=(${url}/releases/individual/proto/${pkgname}-${pkgver}.tar.bz2)
md5sums=(5d551850e6f4acdf49a13f4eb3a5bbfa)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}

