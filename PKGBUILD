# $Id$
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=libxau
pkgver=1.0.3
pkgrel=1
pkgdesc="X11 authorisation library"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=('glibc')
makedepends=('pkgconfig' 'xproto')
options=('!libtool')
source=(${url}/releases/individual/lib/libXau-${pkgver}.tar.bz2)

build() {
  cd ${startdir}/src/libXau-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --host=${CHOST} --build=${CHOST}
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
md5sums=('75a9f2b85cd1617b5ca98c9095323853')
