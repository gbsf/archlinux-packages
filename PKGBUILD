# $Id: PKGBUILD,v 1.2 2007/04/22 13:56:56 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gnome-vfs-monikers
pkgver=2.15.3
pkgrel=2
pkgdesc="The GNOME Virtual File System"
arch=(i686 x86_64)
license=(GPL)
depends=('libbonobo>=2.18.0-2' 'gnome-vfs>=2.18.1')
makedepends=('perlxml' 'pkgconfig')
options=('nolibtool')
url="http://www.gnome.org"
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.15/${pkgname}-${pkgver}.tar.bz2)
md5sums=('b16f0db0482263be3318e269f52bb5b6')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
	      --libexecdir=/usr/lib/gnome-vfs-2.0
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
