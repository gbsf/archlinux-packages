# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
# Contributor: John Proctor <jproctor@prium.net>

pkgname=socat
pkgver=1.6.0.1
pkgrel=1
pkgdesc="Relay for bidirectional data transfer via socket, pty, pipe, file and more"
arch=(i686 x86_64)
depends=('readline' 'openssl<=0.9.8' 'tcp_wrappers')
source=(http://www.dest-unreach.org/socat/download/$pkgname-$pkgver.tar.gz)
md5sums=('5a6a1d1e398d5c4d32fa6515baf477af')
license=(GPL2)
url="http://www.dest-unreach.org/socat/"

build() {
  mkdir -p $startdir/pkg/usr/{bin,share/man/man1}
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --mandir=/usr/share/man
  make depend || return 1
  make || return 1
  make DESTDIR=$startdir/pkg install
}
