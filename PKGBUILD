# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>

pkgname=bc
pkgver=1.06
pkgrel=4
pkgdesc="An arbitrary precision calculator language"
arch=(i686 x86_64)
license=('GPL')
depends=('readline')
replaces=(bc-readline)
conflicts=(bc-readline)
source=(ftp://ftp.gnu.org/gnu/${pkgname}/${pkgname}-${pkgver}.tar.gz
	build-fix.patch)
md5sums=('d44b5dddebd8a7a7309aea6c36fda117' 'fc7ecbd9e55ef04c6d3a495692626116')

build() {
  CFLAGS="$CFLAGS -O3"
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ${startdir}/src/build-fix.patch || return 1
  ./configure --prefix=/usr --with-readline
  make LEX="flex -I" || return 1
  make DESTDIR=${startdir}/pkg install
}
