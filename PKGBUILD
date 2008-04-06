# $Id: PKGBUILD,v 1.4 2007/11/08 01:26:13 travis Exp $
# Maintainer: Travis Willard <travisw@wmpub.ca>
# Contributor: Brad Gordon <brad@rpgcyco.net>

pkgname=libmcs
pkgver=0.6.0
pkgrel=1
pkgdesc="A library and userland tools which abstract the storage of configuration settings"
arch=('i686')
url="http://www.atheme.org/projects/mcs.shtml"
license=('BSD')
depends=('glibc' 'libmowgli')
makedepends=('pkgconfig')
source=(http://distfiles.atheme.org/${pkgname}-${pkgver}.tgz)
options=('!libtool')
md5sums=('c75046d71dc37e8a8d2d66c412db4569')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}

  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install

  install -D -m0644 $startdir/src/${pkgname}-${pkgver}/COPYING \
                    $startdir/pkg/usr/share/licenses/$pkgname/COPYING

}

