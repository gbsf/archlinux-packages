# $id: PKGBUILD,v 1.25 2006/11/30 20:07:03 juergen Exp $
# Contributor: John Proctor <jproctor@prium.net>
# Maintainer: Juergen Hoetzel <juergen@archlinux.org>
pkgname=swi-prolog
pkgver=5.6.52
pkgrel=1
pkgdesc="Prolog environment"
arch=(i686 x86_64)
url="http://www.swi-prolog.org/"
depends=('gmp' 'readline')
license=('GPL')
makedepends=('libxft' 'libjpeg' 'unixodbc' 'openssl' 'libxpm' 'libxinerama')
options=('!makeflags')
source=(http://gollem.science.uva.nl/cgi-bin/nph-download/SWI-Prolog/pl-$pkgver.tar.gz)
md5sums=('3b15a61d4e395cf85118ecb8905b245e')

build() {
  cd $startdir/src/pl-$pkgver
  ./configure --with-world --without-jpl  --prefix=/usr --enable-gmp 
  make DESTDIR=$startdir/pkg world install || return 1
  rm -rf $startdir/pkg/usr/man/man3
}
