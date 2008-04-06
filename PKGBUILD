# $Id: PKGBUILD,v 1.8 2008/01/29 10:14:37 james Exp $
# Maintainer: James Rayner <james@archlinux.org>
# Contributor: Todd Maynard <arch@toddmaynard.com>
pkgname=python-cheetah
pkgver=2.0.1
pkgrel=1
pkgdesc="A Python-powered template engine and code generator"
url="http://www.cheetahtemplate.org/"
license=(custom)
depends=('python')
provides=('cheetah')
conflicts=('cheetah')
arch=('i686' 'x86_64')
source=(http://downloads.sourceforge.net/sourceforge/cheetahtemplate/Cheetah-$pkgver.tar.gz)
install=python-cheetah.install
options=('force')

build() {
  cd ${startdir}/src/Cheetah-$pkgver
  python setup.py install --root=$startdir/pkg

  install -D -m644 LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}


md5sums=('7845a2950ea850a13c488a26b61ac50a')
