# $Id: PKGBUILD,v 1.3 2006/12/23 18:41:27 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=link-grammar
pkgver=4.2.4
pkgrel=1
pkgdesc="A Grammar Checking library"
arch=(i686 x86_64)
url="http://bobo.link.cs.cmu.edu/link/"
license=('BSD')
depends=('glibc')
options=('nolibtool')
source=(http://www.abisource.com/downloads/${pkgname}/${pkgver}/${pkgname}-${pkgver}.tar.gz)
md5sums=('56ed2a55cc6d2c8ec013b75bd0bcc01b')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
