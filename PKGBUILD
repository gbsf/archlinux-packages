# $Id$
# Maintainer: 
pkgname=meld
pkgver=1.1.5.1
pkgrel=2
pkgdesc="Visual diff and merge tool for GNOME"
arch=(i686 x86_64)
license=('GPL')
url="http://meld.sourceforge.net/"
depends=('gnome-python-desktop>=2.20.0-3')
makedepends=('perlxml' 'pkgconfig' 'gnome-doc-utils>=0.11.2' 'intltool')
install=meld.install
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/1.1/${pkgname}-${pkgver}.tar.bz2)
md5sums=('d7366b958f9897f22eb867726b217b5a')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  make prefix=/usr || return 1
  make prefix=/usr DESTDIR=${startdir}/pkg install
  rm -rf ${startdir}/pkg/usr/gnome/share/doc
}
