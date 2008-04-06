# $Id: PKGBUILD,v 1.18 2007/11/29 03:37:16 kevin Exp $
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: Kevin Piche <kevin@archlinux.org>

pkgname=bzflag
pkgver=2.0.10
pkgrel=1
pkgdesc="A multiplayer 3D tank battle game"
depends=('curl>=7.16.2' 'mesa' 'sdl')
arch=('i686' 'x86_64')
license=('LGPL')
options=(!libtool)
url="http://www.bzflag.org"
source=(http://dl.sourceforge.net/sourceforge/bzflag/$pkgname-$pkgver.tar.bz2)
md5sums=('64993b181e72ea713f813d0a78576b70')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install

  # gnome menu entry and icon.
  cd misc
  make
  mkdir -p ${startdir}/pkg/usr/share/{applications,pixmaps}
  install -m644 bzflag.desktop $startdir/pkg/usr/share/applications/bzflag.desktop
  install -m644 ../data/bzflag-48x48.png $startdir/pkg/usr/share/pixmaps/bzflag-48x48.png
}
