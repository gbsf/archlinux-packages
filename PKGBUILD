# $Id: PKGBUILD,v 1.39 2008/03/12 21:30:47 jgc Exp $
# Maintainer:  Jan de Groot <jan@archlinux.org>

pkgname=gnome-desktop
pkgver=2.22.0
pkgrel=1
pkgdesc="The GNOME Desktop"
arch=(i686 x86_64)
license=('GPL' 'LGPL')
depends=('libgnomeui>=2.22.01' 'startup-notification>=0.9')
makedepends=('perlxml' 'gnome-doc-utils>=0.12.2' 'pkgconfig')
url="http://www.gnome.org"
groups=('gnome')
options=('!libtool')
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/2.22/${pkgname}-${pkgver}.tar.bz2)
md5sums=('452d4ee91b3c54aac4282f3f1e3b68f0')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
        --localstatedir=/var --disable-static \
	--with-gnome-distributor="Archlinux" \
	--disable-scrollkeeper || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
