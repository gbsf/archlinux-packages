# $Id: PKGBUILD,v 1.9 2006/06/04 20:34:58 simo Exp $
# Maintainer: arjan <arjan@archlinux.org>
# Contributed by Sarah Hay <sarahhay@mb.sympatico.ca>

pkgname=lincity
pkgver=1.12.1
pkgrel=2
pkgdesc="LinCity is an SVGALIB (Linux only) and X based city/country simulation game for Linux and other Unix platforms (Solaris, FreeBSD, HP_UX, AIX, SCO and IRIX)."
depends=('libxext' 'libsm')
source=(http://dl.sourceforge.net/sourceforge/lincity/$pkgname-$pkgver.tar.gz)
url="http://lincity.sourceforge.net/"

build() {
cd $startdir/src/$pkgname-$pkgver
./configure --prefix=/usr
make || return 1
make prefix=$startdir/pkg/usr install
}
