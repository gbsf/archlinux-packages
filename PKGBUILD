# $Id: PKGBUILD,v 1.22 2007/11/15 23:53:16 daniel Exp $
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=gzip
pkgver=1.3.12
pkgrel=4
pkgdesc="GNU compression utility"
arch=(i686 x86_64)
url="http://www.gzip.org"
license=('GPL')
groups=('base')
depends=('glibc' 'bash')
makedepends=('patch')
source=(ftp://ftp.gnu.org/pub/gnu/gzip/gzip-$pkgver.tar.gz
        gzip-fixutimens.patch)

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 -i ${startdir}/src/gzip-fixutimens.patch || return 1

  ./configure --prefix=/usr
  make || return 1
  mkdir -p $startdir/pkg/bin $startdir/pkg/usr/bin
  make prefix=$startdir/pkg/usr install
  cd $startdir/pkg/usr/bin
  mv $pkgname $startdir/pkg/bin
  mv gunzip zcat uncompress $startdir/pkg/bin
  cd $startdir/pkg/bin
  ln -sf $pkgname compress
}
md5sums=('b5bac2d21840ae077e0217bc5e4845b1'
         'cb592761476921018386031d91625153')
