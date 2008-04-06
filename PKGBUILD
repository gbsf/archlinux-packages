# $Id: PKGBUILD,v 1.12 2007/04/22 20:28:23 jgc Exp $
# Contributor: Ben <contrasutra@myrealbox.com>
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gweled
pkgver=0.7
pkgrel=4
pkgdesc="Bejewled Game (aka Diamond Mine)"
arch=(i686 x86_64)
license=('GPL')
url="http://sebdelestaing.free.fr/gweled/"
depends=('libgnomeui>=2.18.1-2' 'librsvg>=2.16' 'libmikmod' 'filesystem>=0.8-3')
install=gweled.install
source=(http://sebdelestaing.free.fr/gweled/Release/${pkgname}-${pkgver}.tar.gz
        invalid_free.patch)
md5sums=('730fe1737e0b0e9940575aa573d63d84' '7b467d82e42183c36b25bcf5f9bf4407')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np0 -i ${startdir}/src/invalid_free.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
              --with-scores-user=root --with-scores-group=games
  make LDFLAGS+=-Wl,--export-dynamic || return 1
  make DESTDIR=${startdir}/pkg install

  #We generate these files on postinstall to prevent score resets on upgrade
#  rm -rf ${startdir}/pkg/var
}

