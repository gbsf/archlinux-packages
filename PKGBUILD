# $Id: PKGBUILD,v 1.7 2005/05/02 22:12:30 damir Exp $
# Maintainer: Jason Chu <jason@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Commiter: damir <damir@archlinux.org>

pkgname=gnugo
pkgver=3.6
pkgrel=1
pkgdesc="This sofware is a program that plays the game of Go"
source=(http://ftp.gnu.org/gnu/gnugo/$pkgname-$pkgver.tar.gz)
url="http://www.gnu.org/software/gnugo/"
depends=('ncurses' 'glibc')

build() {
    cd $startdir/src/$pkgname-$pkgver
    ./configure --prefix=/usr
    make || return 1
    make prefix=$startdir/pkg/usr install
}
