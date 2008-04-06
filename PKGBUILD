# $Id: PKGBUILD,v 1.1 2005/11/08 09:40:58 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gdome2
pkgver=0.8.1
pkgrel=1
pkgdesc="Gnome DOM Engine"
url="http://gdome2.cs.unibo.it/"
license="LGPL"
depends=('libxml2' 'glib2')
source=(http://gdome2.cs.unibo.it/tarball/${pkgname}-${pkgver}.tar.gz)
md5sums=('bfc114e59eec50cbda8e4ece751ff022')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
  find ${startdir}/pkg -name '*.la' -exec rm {} \;
}
