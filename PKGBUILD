# $Id: PKGBUILD,v 1.5 2007/12/09 21:35:43 eric Exp $
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Jason Chu <jason@archlinux.org>

pkgname=pyogg
pkgver=1.3
pkgrel=4
pkgdesc="Python ogg wrapper library"
arch=('i686' 'x86_64')
url="http://ekyo.nerim.net/software/pyogg/index.html"
license=('LGPL2')
depends=('python>=2.5' 'libogg' 'glibc')
source=(http://ekyo.nerim.net/software/pyogg/$pkgname-$pkgver.tar.gz)
md5sums=('45a4ecc4d0600661199e4040a81ea3fe')
sha1sums=('2811ad401e3b5fc5025958bddab3d7b8775e5acd')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./config_unix.py --prefix=$startdir/pkg/usr
  python setup.py install --prefix=$startdir/pkg/usr
}
