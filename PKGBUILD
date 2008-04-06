# $Id: PKGBUILD,v 1.12 2008/03/26 08:49:34 damir Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=scim-hangul
pkgver=0.3.2
pkgrel=2
pkgdesc="SCIM 한글 (hangul) input method engine for Korean language"
arch=("i686" "x86_64")
url="http://www.scim-im.org/"
license=("GPL")
depends=('libhangul>=0.0.7' 'scim>=1.4.7')
source=("http://heanet.dl.sourceforge.net/sourceforge/scim/$pkgname-$pkgver.tar.gz" "$pkgname-$pkgver-fix-gcc43-build.patch")
options=("!libtool")

build() {
  cd $startdir/src
  patch -Np0 -i $pkgname-$pkgver-fix-gcc43-build.patch  || return 1
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --enable-skim-support  
  make || return 1
  make DESTDIR=$startdir/pkg install
}


md5sums=('882460f47dd3211f94c80ed894ad05cb'
         '0a9784bba2bca5f74a9897ef2a286543')
