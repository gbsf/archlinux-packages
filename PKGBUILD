# $Id$
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=bin86
pkgver=0.16.17
pkgrel=3
pkgdesc="A complete 8086 assembler and loader"
arch=(i686 x86_64)
license=('GPL')
url="http://www.cix.co.uk/~mayday"
groups=('base-devel')
depends=('glibc')
source=(http://homepage.ntlworld.com/robert.debath/dev86/$pkgname-$pkgver.tar.gz
	bin86-0.16.17-x86_64-1.patch)
md5sums=('c9e8d72dd2e7457b52d0e3164fc199a1' '92bdce7b0655cd2e9f83c83fc56d128e')

build() {
  cd $startdir/src/$pkgname-$pkgver
  if [ "$CARCH" = "x86_64" ]; then
     patch -Np1 -i ../bin86-0.16.17-x86_64-1.patch || return 1
  fi
  make PREFIX=/usr || return 1
  mkdir -p $startdir/pkg/usr/bin $startdir/pkg/usr/man/man1
  make PREFIX=$startdir/pkg/usr install
}
