# $Id: PKGBUILD,v 1.9 2007/11/08 01:45:31 travis Exp $
# Maintainer: arjan <arjan@archlinux.org>
#contributor Sarah Hay <sarahhay@mb.sympatico.ca>

pkgname=libcdaudio
pkgver=0.99.12
pkgrel=3
pkgdesc="A portable library for controlling Audio CDs and managing the transfers of information with the CDDB system."
arch=(i686 x86_64)
url="http://libcdaudio.sourceforge.net/"
license=('GPL')
depends=(glibc)
source=(http://dl.sourceforge.net/sourceforge/libcdaudio/$pkgname-${pkgver}p2.tar.gz)
md5sums=('15de3830b751818a54a42899bd3ae72c')
options=('!libtool')

build() {
  cd $startdir/src/$pkgname-${pkgver}p2
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}

