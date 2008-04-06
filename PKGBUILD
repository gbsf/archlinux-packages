# $Id: PKGBUILD,v 1.16 2007/04/03 03:01:29 alexander Exp $
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>
pkgname=zsnes
pkgver=1.51
pkgrel=2
pkgdesc="Super Nintendo emulator"
arch=(i686 x86_64 ppc)
depends=('gcc' 'sdl' 'libpng' 'libgl' 'ncurses')
makedepends=('nasm')
source=(http://dl.sourceforge.net/sourceforge/zsnes/zsnes151src.tar.bz2)
url="http://www.zsnes.com/"

build() {
  cd ${startdir}/src/${pkgname}_1_51/src
  ./autogen.sh --prefix=/usr x_libraries=/usr/lib force_arch=i686 \
               --enable-release
  
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
md5sums=('328071775f88f7c3b9fdb94176e5e417')
