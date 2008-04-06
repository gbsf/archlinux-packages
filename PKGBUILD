# $Id: PKGBUILD,v 1.26 2008/03/28 19:18:20 daniel Exp $
# Maintainer: tobias@archlinux.org

pkgname=libgdiplus
pkgver=1.9
pkgrel=1
pkgdesc="An Open Source Implementation of the GDI+ API"
arch=(i686 x86_64)
license=('MPL' 'LGPL')
url="http://www.mono-project.com"
depends=('libtiff' 'cairo>=1.4.10' 'libungif' 'glib2>=2.14.0' 'libexif')
makedepends=('automake' 'pkgconfig')
options=('!libtool')
source=(http://go-mono.com/sources/${pkgname}/${pkgname}-${pkgver}.tar.bz2)
md5sums=('939f65903ea385ae1dc9bf0098669838')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  libtoolize --force --copy
  aclocal
  autoconf
  automake
  ./configure --prefix=/usr --with-cairo=system
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
