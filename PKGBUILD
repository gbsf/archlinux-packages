# $Id$
# Contributor: Sarah Hay <sarahhay@mb.sympatico.ca>
# Maintainer: Jason Chu <jason@archlinux.org>

pkgname=xawtv
pkgver=3.95
pkgrel=1
pkgdesc="Is a simple Xaw-based TV program which uses the bttv driver or video4linux."
depends=('libjpeg' 'alsa-lib' 'lesstif' 'libdv' 'zvbi' 'aalib' \
         'libxxf86dga' 'libfs' 'libxrandr' 'libxinerama' 'libxv' 'libxaw' \
	 'libxxf86vm' 'libgl')
source=(http://dl.bytesex.org/releases/$pkgname/$pkgname-$pkgver.tar.gz \
        xawtv-395.diff)
url="http://linux.bytesex.org/xawtv/"
md5sums=('ad25e03f7e128b318e392cb09f52207d')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 < $startdir/src/xawtv-395.diff
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
