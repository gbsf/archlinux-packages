# $Id: PKGBUILD,v 1.3 2007/11/05 18:01:12 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
pkgname=pixman
pkgver=0.9.6
pkgrel=1
pkgdesc=""
arch=(i686 x86_64)
url="http://xorg.freedesktop.org"
license=()
depends=('glibc')
options=('!libtool')
source=(http://xorg.freedesktop.org/releases/individual/lib/${pkgname}-${pkgver}.tar.bz2 \
        pixman-compose-fix.patch)

build() {
  cd "${startdir}/src/${pkgname}-${pkgver}"
  
  patch -Np1 -i ${startdir}/src/pixman-compose-fix.patch || return 1

  ./configure --prefix=/usr
  make || return 1
  make DESTDIR="${startdir}/pkg" install
}

md5sums=('7681334f55d41a705339228145d02c11'
         '26ee31eea878759f66b874b6a6bd7c35')
