# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: G_Syme <demichan(at)mail(dot)upb(dot)de>

pkgname=silly
pkgver=0.1.0
pkgrel=2
pkgdesc="Simple Image Loading LibrarY, a part of the CEGUI project"
arch=('i686' 'x86_64')
url="http://www.cegui.org.uk/wiki/index.php/SILLY"
license=('MIT')
depends=('libjpeg' 'libpng' 'gcc-libs')
options=('!libtool')
source=(http://downloads.sourceforge.net/crayzedsgui/SILLY-$pkgver.tar.gz)
md5sums=('c3721547fced7792a36ffc9ce6ec23fd')
sha1sums=('ef5c8ed6c5c57d7d792dbb9e02006c3770334869')

build() {
  cd $startdir/src/SILLY-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install

# install the MIT license
  install -D -m644 COPYING $startdir/pkg/usr/share/licenses/$pkgname/COPYING
}
