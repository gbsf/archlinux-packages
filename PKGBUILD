#$Id: PKGBUILD,v 1.6 2007/07/07 21:07:37 eric Exp $
#Maintainer: Aaron Griffin <aaron@archlinux.org>
#Contributor: Federico Quagliata (quaqo) <quaqo@despammed.com>
#Contributor: cdhotfire <cdhotfire@gmail.com>

pkgname=python-eyed3
pkgver=0.6.14
pkgrel=1
pkgdesc="A Python module and program for processing information about mp3 files"
arch=(i686 x86_64)
url="http://eyed3.nicfit.net/"
license=('GPL')
depends=('python>=2.5')
source=(http://eyed3.nicfit.net/releases/eyeD3-$pkgver.tar.gz)
md5sums=('c4f81b3cbb72993244f27ab740abbccc')
options=(!emptydirs)

build()
{
  cd $startdir/src/eyeD3-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
} 
