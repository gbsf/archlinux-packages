# $Id: PKGBUILD,v 1.21 2008/04/02 22:20:58 tobias Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=gimp-ufraw
_srcname=ufraw
pkgver=0.13
pkgrel=2
pkgdesc="standalone or gimp plugin converter for raw files"
url="http://ufraw.sourceforge.net/"
arch=(i686 x86_64)
license=(GPL2)
depends=('lcms' 'gtk2' 'libexif' 'exiv2>=0.16')
makedepends=('gimp')
source=(http://dl.sourceforge.net/sourceforge/${_srcname}/${_srcname}-${pkgver}.tar.gz)
md5sums=('6470f787a8f62f6e1642161e3c8d557b')

build() {
  cd ${startdir}/src/${_srcname}-${pkgver}
  ./configure --prefix=/usr \
    --enable-extras \
    --with-libexif --with-exiv2
  sed -i "s/-ffast-math -fomit-frame-pointer -W -Wall -O3/${CFLAGS}/" Makefile
  make
  make DESTDIR=${startdir}/pkg install
  rm -f ${startdir}/pkg/usr/bin/dcraw
}
