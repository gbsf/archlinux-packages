# $Id: PKGBUILD,v 1.6 2007/09/22 18:04:11 alexander Exp $
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=xf86-input-fpit
pkgver=1.1.0
pkgrel=4
pkgdesc="X.Org Fujitsu Stylistic Tablet PC input driver"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=('glibc')
makedepends=('pkgconfig' 'xorg-server>=1.1.1')
groups=('xorg-input-drivers')
options=('nolibtool')
source=(${url}/releases/individual/driver/${pkgname}-${pkgver}.tar.bz2)
md5sums=('a31066a2076d18619ceaea67f6d89698')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr \
              --build=${CHOST} --host=${CHOST}
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
