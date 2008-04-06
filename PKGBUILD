# $Id: PKGBUILD,v 1.16 2008/03/29 04:23:47 eric Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Michel Brabants <michel.linux@tiscali.be>

pkgname=nip2
pkgver=7.14.1
mainver=7.14
force=y
pkgrel=1
pkgdesc="nip2 is a frontend to the vips image library"
arch=("i686" "x86_64")
license=('GPL')
url="http://www.vips.ecs.soton.ac.uk/index.php"
depends=('vips>=7.14.1' 'gtk2' 'gsl')
makedepends=('perlxml')
install=$pkgname.install
source=("http://www.vips.ecs.soton.ac.uk/supported/$mainver/$pkgname-$pkgver.tar.gz")

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  rm -f $startdir/pkg/usr/share/mime/{mimeinfo.cache,mime.cache,XMLnamespaces,aliases,globs,magic,subclasses}
  rm -f $startdir/pkg/usr/share/applications/mimeinfo.cache
}


md5sums=('b2ea46b0e72eea5f7c79b7e9e0ee6b0d')
