# Contributor: Tobias Kieslich <tobias (at) archlinux.org>
# Maintainer: aurelien <aurelien@archlinux.org>

pkgname=orage
pkgver=4.4.2
pkgrel=1
pkgdesc="A simple calendar application with reminders for Xfce"
arch=(i686 x86_64)
license=('GPL2')
url="http://www.xfce.org/projects/orage/"
depends=('exo>=0.3.4' 'xfce4-panel')
makedepends=('xfce-mcs-manager>=4.4.2' 'intltool' 'pkgconfig')
options=('!libtool')
replaces=('xfcalendar')
install=${pkgname}.install
source=(http://www.xfce.org/archive/xfce-${pkgver}/src/${pkgname}-${pkgver}.tar.bz2)
md5sums=('0c69e4c20350c3000d49350991d3a520')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --libexecdir=/usr/lib/xfce4 \
    --localstatedir=/var --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
