# $Id$
# Maintainer: Paul Mattal <paul@archlinux.org>

pkgname=motion
pkgver=3.2.9
pkgrel=1
pkgdesc="Motion is a software motion detector. It grabs images from video4linux devices and/or from webcams."
arch=(i686 x86_64)
license=('GPL')
url="http://www.lavrsen.dk/twiki/bin/view/Motion/WebHome"
depends=('curl' 'ffmpeg>=20071204' 'libogg' 'libvorbis' 'lame' 'xvidcore')
source=(http://dl.sf.net/sourceforge/motion/$pkgname-$pkgver.tar.gz rc.motion)
md5sums=('6003011b126c9b17e23e085e7fba6536' 'fc09828564850824f8549d258053e0b6')

build() {
  cd $startdir/src/$pkgname-$pkgver || return 1
  ./configure --prefix=/usr --without-pgsql --without-mysql \
  	--with-libavcodec=/usr/lib/ --sysconfdir=/etc/$pkgname || return 1
  make || return 1
  make prefix=$startdir/pkg/usr sysconfdir=$startdir/pkg/etc/$pkgname install \
  	|| return 1
  install -D -m755 $startdir/src/rc.motion $startdir/pkg/etc/rc.d/motion \
  	|| return 1
}
