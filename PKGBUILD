# $Id: PKGBUILD,v 1.15 2008/03/29 04:28:11 eric Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Michel Brabants <michel.linux@tiscali.be>

pkgname=vips
pkgver=7.14.1
mainver=7.14
pkgrel=1
pkgdesc="VIPS is a free image processing system."
arch=("i686" "x86_64")
license=('LGPL2.1')
url="http://www.vips.ecs.soton.ac.uk/index.php"
depends=('fftw>=3.0.1-5' 'lcms' 'pango' 'imagemagick>=6.2.6' 'libpng' 'libtiff' 'libjpeg' 'zlib' 'glib2' 'libexif' 'openexr' 'liboil')
makedepends=('make' 'pkgconfig' 'perl' 'swig>=1.3.31' 'perlxml')
source=("http://www.vips.ecs.soton.ac.uk/supported/$mainver/$pkgname-$pkgver.tar.gz")
options=('!libtool')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}

md5sums=('4766b591d3970e07fb6135758d84b877')
