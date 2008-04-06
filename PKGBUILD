# $Id: PKGBUILD,v 1.61 2008/03/10 19:07:31 jgc Exp $ 
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=pango
pkgver=1.20.0
pkgrel=1
pkgdesc="A library for layout and rendering of text"
arch=(i686 x86_64)
license=('LGPL')
depends=('glib2>=2.16.0' 'cairo>=1.4.14' 'libxft>=2.1.12' 'libthai>=0.1.9')
makedepends=('pkgconfig' 'libxt')
options=('!libtool' '!emptydirs')
install=pango.install
source=(http://ftp.gnome.org/pub/gnome/sources/${pkgname}/1.20/${pkgname}-${pkgver}.tar.bz2)
url="http://www.gtk.org/"
md5sums=('f0959c4b9b058ba9e4d13fc9086b7e7d')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --without-qt || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
