# $Id: PKGBUILD,v 1.8 2008/03/27 22:39:52 andyrtr Exp $
# Maintainer: Andreas Radke <andyrtr@archlinux.org>

pkgname=tzdata
pkgver=2008b
pkgrel=1
_tzcode=2008a
_tzdata=2008b
pkgdesc="Sources for time zone and daylight saving time data"
arch=('i686' 'x86_64')
url="http://www.twinsun.com/tz/tz-link.htm"
license=('GPL')
groups=('base')
depends=()
makedepends=()
options=()
source=(ftp://elsie.nci.nih.gov/pub/tzcode${_tzcode}.tar.gz \
        ftp://elsie.nci.nih.gov/pub/${pkgname}${_tzdata}.tar.gz \
        Makefile.patch)
md5sums=('4a04c12a8ec50b0a8cfc9ebce96b07d3'
         'dbeb9a327bbff77ab4078488b8c5323a'
         'a64ed97d1fc03c66ee8612c0d9f40507')

build() {
  cd ${startdir}/src/

  tar -xf tzcode${_tzcode}.tar.gz  || return 1
  tar -xf ${pkgname}${_tzdata}.tar.gz || return 1

  patch -Np1 -i ../Makefile.patch || return 1

  make || return 1
  make DESTDIR="${startdir}/pkg" install

  rm ${startdir}/pkg/usr/share/zoneinfo/localtime
}
