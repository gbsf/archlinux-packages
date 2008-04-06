# $Id: PKGBUILD,v 1.2 2008/03/14 22:03:07 jgc Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=ggz-client-libs
pkgver=0.0.14.1
pkgrel=1
pkgdesc="GGZ client library, used by the GGZ Gaming Zone server (ggzd), the ggzcore library and other components"
arch=(i686 x86_64)
url="http://www.ggzgamingzone.org/"
license=('LGPL')
depends=('libggz>=0.0.14.1' 'expat>=2.0.1')
options=('!libtool')
source=(http://ftp.ggzgamingzone.org/pub/ggz/${pkgver}/${pkgname}-${pkgver}.tar.gz)
md5sums=('299eaa93721b1d867b5bf7dc6ac764b0')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
