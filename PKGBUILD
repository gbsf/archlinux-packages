# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
pkgname=normalize
pkgver=0.7.7
pkgrel=1
pkgdesc="normalize is a tool for adjusting the volume of WAV files to a standard level"
arch=(i686 x86_64)
license=('GPL')
depends=('audiofile' 'libmad')
source=(http://download.savannah.gnu.org/releases/${pkgname}/${pkgname}-${pkgver}.tar.bz2)
url="http://normalize.nongnu.org"

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr \
              --with-audiofile \
              --with-mad
  make || return 1
  make prefix=${startdir}/pkg/usr install
}
md5sums=('1749b16fc7a08aa5d0cf9f76eeaa8436')
