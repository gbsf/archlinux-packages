# $Id: PKGBUILD,v 1.13 2006/03/27 18:33:08 judd Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
# Committer: Judd Vinet <jvinet@zeroflux.org>
# Contributor: Lucien Immink <l.immink@student.fnt.hvu.nl>
pkgname=mc
pkgver=4.6.1
pkgrel=4
pkgdesc="A filemanager/shell that emulates Norton Commander"
depends=('e2fsprogs' 'glib2' 'gpm')
source=(http://www.ibiblio.org/pub/Linux/utils/file/managers/mc/$pkgname-$pkgver.tar.gz \
        http://www.archlinux.org/~dorphell/$pkgname-$pkgver-utf8.patch.bz2)
url="http://www.ibiblio.org/mc/"
md5sums=('18b20db6e40480a53bac2870c56fc3c4' '07ef6dc2b1e601c5164ad6030b630c3b')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -p1 -i $startdir/src/$pkgname-$pkgver-utf8.patch
  ./configure --prefix=/usr --with-x
  make || return 1
  make DESTDIR=$startdir/pkg install
  rm -r $startdir/pkg/usr/{man/man8/,man/sr/,sbin}
}

