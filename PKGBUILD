# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>
pkgname=libart-lgpl
pkgver=2.3.20
pkgrel=1
pkgdesc="A library for high-performance 2D graphics"
url="http://www.levien.com/libart/"
arch=(i686 x86_64)
license=('LGPL')
depends=('glibc')
source=(http://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-${pkgver}.tar.bz2)
md5sums=('d0ce67f2ebcef1e51a83136c69242a73')
options=('!libtool')

build() {
  cd ${startdir}/src/libart_lgpl-${pkgver}
  ./configure --prefix=/usr || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
