# $Id: PKGBUILD,v 1.17 2007/12/03 20:22:26 tobias Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>

pkgname=xfce4-diskperf-plugin
pkgver=2.1.0
pkgrel=4
pkgdesc="Plugin for the Xfce4 panel displaying instant disk/partition performance"
arch=(i686 x86_64)
license=('custom')
url="http://xfce-goodies.berlios.de/"
groups=('xfce4-goodies')
depends=('xfce4-panel')
makedepends=('pkgconfig')
options=('!libtool')
source=(http://goodies.xfce.org/releases/${pkgname}/${pkgname}-${pkgver}.tar.bz2)
md5sums=('fc74a0c7d2b9486cdb704a072cd72b83')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --libexecdir=/usr/lib/xfce4 \
    --localstatedir=/var --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install
  install -Dm644 COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}/COPYING
}
