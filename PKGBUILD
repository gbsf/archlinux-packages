# $Id:
# Maintainer: Jason Chu <jason@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
#
pkgname=gforth
pkgver=0.6.2
pkgrel=1
pkgdesc="Gforth is a fast and portable implementation of the ANS Forth language"
depends=(glibc)
source=(http://www.complang.tuwien.ac.at/forth/$pkgname/$pkgname-$pkgver.tar.gz)
md5sums=('869112bd762b07fc4d2038a2d9965148')
build() {
        cd $startdir/src/$pkgname-$pkgver
        ./configure --prefix=/usr
        make || return 1
        make prefix=$startdir/pkg/usr install
       }
