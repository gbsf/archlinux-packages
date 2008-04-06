# $Id: PKGBUILD,v 1.33 2008/04/01 17:59:21 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=glibmm
pkgver=2.16.1
pkgrel=1
pkgdesc="Glib-- (glibmm) is a C++ interface for glib"
arch=(i686 x86_64)
license=('LGPL')
depends=('glib2>=2.16.2' 'libsigc++2.0>=2.2.2')
makedepends=('pkgconfig')
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/2.16/${pkgname}-${pkgver}.tar.bz2)
options=('!libtool')
url="http://gtkmm.sourceforge.net/"
md5sums=('44f5fb1a88eb3fd495b974861914067a')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
