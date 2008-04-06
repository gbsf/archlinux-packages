# $Id: PKGBUILD,v 1.19 2007/12/04 07:56:56 tobias Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>

pkgname=exo
pkgver=0.3.4
pkgrel=1
pkgdesc="Extensions to Xfce by os-cillation"
arch=(i686 x86_64)
license=('GPL2' 'LGPL2')
url="http://www.os-cillation.com/article.php?sid=40"
groups=('xfce4')
depends=('libxfce4util>=4.4.2' 'gtk2>=2.12.1' 'hal' 'perl-uri')
makedepends=('pygtk>=2.12.0' 'pkgconfig' 'xfce-mcs-manager>=4.4.2')
options=('!libtool')
install=${pkgname}.install
source=(http://www.xfce.org/archive/xfce-4.4.2/src/${pkgname}-${pkgver}.tar.bz2)
md5sums=('7a1af943b1df32b6f89ae91823118a22')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --libexecdir=/usr/lib/xfce4 \
    --localstatedir=/var --disable-static \
    --enable-mcs-plugin --enable-python
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
