# $Id: PKGBUILD,v 1.9 2008/02/10 22:05:05 kevin Exp $
# Maintainer: Kevin Piche <kevin@archlinux.org>

pkgname=jackbeat
pkgver=0.6.3
pkgrel=1
pkgdesc="an audio sequencer, a Linux tool for musicians and sound artists"
arch=(i686 x86_64)
license=('GPL')
url="http://www.samalyse.com/jackbeat/"
source=(http://www.samalyse.com/jackbeat/files/${pkgname}-${pkgver}.tar.gz)
depends=('gtk2' 'jack-audio-connection-kit' 'libsamplerate' 'libxml2')
md5sums=('a0d394796ed023631f7ebc00ab68f59d')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}

  if [ "${CARCH}" = "x86_64" ]; then
    sed -i 's/REG_EIP/REG_RIP/g' src/main.c
  fi
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
