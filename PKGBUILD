# $Id$
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=libxss
pkgver=1.1.3
pkgrel=1
pkgdesc="X11 Screen Saver extension library"
arch=(i686 x86_64)
license=('custom:XFREE86')
url="http://xorg.freedesktop.org/"
depends=('libxext' 'scrnsaverproto')
makedepends=('pkgconfig')
options=('!libtool')
source=(${url}/releases/individual/lib/libXScrnSaver-${pkgver}.tar.bz2)

build() {
  cd ${startdir}/src/libXScrnSaver-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  install -D -m644 ${startdir}/src/libXScrnSaver-${pkgver}/COPYING \
                   ${startdir}/pkg/usr/share/licenses/${pkgname}/COPYING
}
md5sums=('93f84b6797f2f29cae1ce23b0355d00d')
