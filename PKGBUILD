# $Id: PKGBUILD,v 1.4 2007/12/28 15:53:13 damir Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=liborigin
pkgver=20071119
pkgrel=1
pkgdesc="A library for reading OriginLab OPJ project files"
url="http://sourceforge.net/projects/liborigin/";
arch=("i686" 'x86_64')
depends=('gcc-libs')
license=("GPL")
source=("http://switch.dl.sourceforge.net/sourceforge/liborigin/liborigin-$pkgver.tar.gz")
#source=("http://puzzle.dl.sourceforge.net/sourceforge/liborigin/${pkgname}-${pkgver}.tgz")


build() {
	cd ${startdir}/src/${pkgname}-${pkgver}
	cmake . -DCMAKE_INSTALL_PREFIX=/usr || return 1
	make || return 1
	make DESTDIR=$startdir/pkg install
}

md5sums=('ba5f2a1ee31089f78c2661e5ce4a3c54')
