# $Id: PKGBUILD,v 1.1 2007/02/06 19:42:49 tobias Exp $
# Contributor: Tobias Kieslich [tobias.justdreams.de]

pkgname=libxmi
pkgver=1.2
pkgrel=1
pkgdesc="library for rasterizing 2-D vector graphics"
url="http://www.gnu.org/software/libxmi/libxmi.html"
license="GPL"
depends=('glibc')
source=(http://mirrors.usc.edu/pub/gnu/${pkgname}/${pkgname}-${pkgver}.tar.gz)
md5sums=('4e6935484f0ad71b531920bf4c546b47')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
