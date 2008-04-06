# $Id: PKGBUILD,v 1.9 2007/06/13 15:16:36 andyrtr Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libmpcdec
pkgver=1.2.6
pkgrel=1
pkgdesc="Musepack decoding library"
arch=(i686 x86_64)
license=('custom')
depends=('glibc')
options=('!libtool')
source=(http://files.musepack.net/source/${pkgname}-${pkgver}.tar.bz2)
url="http://musepack.net/"
md5sums=('7f7a060e83b4278acf4b77d7a7b9d2c0')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  install -Dm644 COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}/COPYING
}
