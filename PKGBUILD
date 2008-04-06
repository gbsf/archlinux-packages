# $Id: PKGBUILD,v 1.13 2008/03/21 13:31:50 damir Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=libwpd
pkgver=0.8.14
pkgrel=1
pkgdesc="library for importing WordPerfect (tm) documents"
arch=('i686' 'x86_64')
url="http://libwpd.sourceforge.net/"
source=(http://switch.dl.sourceforge.net/sourceforge/libwpd/libwpd-${pkgver}.tar.gz)
depends=('libgsf>=1.14.3-2')
options=("!libtool")
license=("LGPL")

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --without-docs
  make || return 1
  make DESTDIR=${startdir}/pkg install
}

md5sums=('64d66018897d759358f454010b6e75d2')
