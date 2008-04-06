# $Id: PKGBUILD,v 1.8 2008/03/12 23:42:42 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gnome-pilot-conduits
pkgver=2.0.16
pkgrel=1
pkgdesc="Conduits for gnome-pilot"
arch=(i686 x86_64)
license=('GPL')
depends=('gnome-pilot>=2.0.16')
makedepends=('perlxml' 'pkgconfig')
options=('!libtool')
url="http://www.gnome.org"
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.0/${pkgname}-${pkgver}.tar.bz2)
md5sums=('c66944dcf035e4d334350728bec41ead')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
