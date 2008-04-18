# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=feh
pkgver=1.3.4
pkgrel=3
pkgdesc="feh is a fast, lightweight image viewer which uses imlib2"
depends=('libpng' 'libxinerama' 'giblib')
source=(http://linuxbrit.co.uk/downloads/$pkgname-$pkgver.tar.gz)
url="http://www.linuxbrit.co.uk/feh/"
md5sums=('3d35ba3d2f0693b019800787f1103891')

build() {
	cd $startdir/src/$pkgname-$pkgver
	./configure --prefix=/usr
	make || return 1
	make prefix=$startdir/pkg/usr install
}
