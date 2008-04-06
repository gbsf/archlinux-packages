# $Id: PKGBUILD,v 1.8 2007/06/05 20:45:19 andyrtr Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=libvisual-plugins
pkgver=0.4.0
pkgrel=2
pkgdesc="plugins for libvisual"
arch=("i686" "x86_64")
license=('GPL')
url="http://www.localhost.nl/~synap/libvisual/"
depends=('libvisual>=0.4.0' 'gtk2' 'mesa' 'alsa-lib' 'esd' 'jack-audio-connection-kit')
makedepends=(pkgconfig)
install=libvisual-plugins.install
source=("http://downloads.sourceforge.net/sourceforge/libvisual/libvisual-plugins-${pkgver}.tar.gz")
md5sums=('4330e9287f9d6fae02f482f428a1e77b')
options=(!libtool)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr  --enable-alsa --disable-gstreamer-plugin
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
