# $Id: PKGBUILD,v 1.9 2007/05/20 15:09:50 travis Exp $
# Maintainer: Travis Willard <travis@archlinux.org>

pkgname=nss-mdns
pkgver=0.10
pkgrel=1
pkgdesc="glibc plugin providing host name resolution via mDNS"
arch=('i686' 'x86_64')
url="http://0pointer.de/lennart/projects/nss-mdns/"
license=('lgpl')
depends=('glibc')
makedepends=('pkgconfig')
backup=('etc/mdns.allow')
install=nss-mdns.install
source=(http://0pointer.de/lennart/projects/nss-mdns/${pkgname}-${pkgver}.tar.gz
        mdns.allow)
md5sums=('03938f17646efbb50aa70ba5f99f51d7'
         '904abb492fb1f56722826c0c3a997bf0')
sha1sums=('d8610950b8b209e29129a70765449b820bcda1a0'
          '22ffc0671076089e22816165a46d8d97c0d99377')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/ --disable-lynx --enable-avahi
  make || return 1
  make DESTDIR=${startdir}/pkg install
  mkdir -p ${startdir}/pkg/etc
  install -m644 ../mdns.allow ${startdir}/pkg/etc/mdns.allow
}

