# $Id: PKGBUILD,v 1.9 2007/11/16 12:49:45 alexander Exp $
# Maintainer: Alexander Baldeck <Alexander@archlinux.org
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=xf86-input-evdev
pkgver=1.2.0
pkgrel=1
pkgdesc="X.org evdev input driver"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=('glibc')
makedepends=('pkgconfig' 'xorg-server>=1.4')
options=('!libtool')
groups=('xorg-input-drivers')
source=(${url}/releases/individual/driver/${pkgname}-${pkgver}.tar.bz2)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}

md5sums=('0c7c41d3f1637bb559e80c2ad708f05d')
