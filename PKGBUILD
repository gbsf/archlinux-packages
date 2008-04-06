# $Id: PKGBUILD,v 1.6 2007/08/05 13:15:21 jgc Exp $
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: damir <damir@archlinux.org>

pkgname=lzop
pkgver=1.02rc1
pkgrel=3
pkgdesc="File compressor using lzo lib"
arch=(i686 x86_64)
license=('GPL')
url="http://www.lzop.org/"
depends=('lzo2')
source=(http://www.lzop.org/download/${pkgname}-${pkgver}.tar.gz)
md5sums=('4b999030716b1353c3dac049b269df7a')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
