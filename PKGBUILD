# $Id: PKGBUILD,v 1.18 2008/03/12 21:32:40 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=libgtop
pkgver=2.22.0
pkgrel=1
pkgdesc="A library that read information about processes and the running system"
arch=(i686 x86_64)
license=('LGPL')
depends=('glib2>=2.16.1' 'libxau')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2)
options=('!libtool')
url="http://www.gnome.org/"
md5sums=('c4f15d95dea6441a08b4f2260996becd')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --with-libgtop-smp --with-libgtop-inodedb \
	      --with-linux-table || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
