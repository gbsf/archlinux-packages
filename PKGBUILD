# $Id: PKGBUILD,v 1.6 2008/02/07 11:33:23 james Exp $
#Contributor: Simo Leone <neotuli@gmail.com>
pkgname=reiser4progs
pkgver=1.0.6
pkgrel=2
pkgdesc="Reiser4 filesystem programs"
arch=('i686' 'x86_64')
url="http://www.namesys.com/v4/v4.html"
license=('custom:GPL')
depends=('e2fsprogs' 'libaal')
source=(http://ftp.de.debian.org/debian/pool/main/r/reiser4progs/reiser4progs_1.0.6.orig.tar.gz)
#source=(ftp://ftp.namesys.com/pub/reiser4progs/$pkgname-$pkgver.tar.gz)
install=reiser4progs.install

options=('!libtool')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --exec-prefix=/
  make || return 1
  make DESTDIR=$startdir/pkg/ install

  #install license
  install -D -m0644 COPYING $startdir/pkg/usr/share/licenses/$pkgname/COPYING
}

md5sums=('8c618e35a4a893f0e948b03cee25749d')
