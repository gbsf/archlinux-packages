# $Id: PKGBUILD,v 1.4 2004/06/30 21:11:07 dale Exp $
# Contributor : Damir Perisa <damir.perisa@bluewin.ch>
# Maintainer: dale <dale@archlinux.org>

pkgname=fortune-mod-kernelcookies
pkgver=8
pkgrel=1
pkgdesc="A collection of funny or strange lines from the Linux kernel. A fortune cookie-file"
depends=(fortune-mod)
url="http://www.schwarzvogel.de/software-misc.shtml"
source=(http://www.schwarzvogel.de/pkgs/kernelcookies-$pkgver.tar.gz)
md5sums=('4de18706b570d9460ed41c538627bd7a')

build() {
  cd $startdir/src/kernelcookies-$pkgver
  mkdir -p $startdir/pkg/usr/share/fortune
  cp $startdir/src/kernelcookies-$pkgver/kernelcookies* $startdir/pkg/usr/share/fortune
  chmod 644 $startdir/pkg/usr/share/fortune/*
}
