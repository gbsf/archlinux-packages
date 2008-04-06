# $Id: PKGBUILD,v 1.6 2007/09/22 09:36:54 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Michel Brabants <michel.linux@tiscali.be>

pkgname=vips-devel
provides=('vips')
conflicts=('vips')
pkgver=7.13.0
mainver=7.13
pkgrel=1
license=('LGPL2.1')
pkgdesc="A free image processing system. [devel]"
arch=("i686" "x86_64")
url="http://www.vips.ecs.soton.ac.uk/index.php"
depends=('liboil' 'fftw>=3.0.1-5' 'lcms' 'pango' 'imagemagick>=6.2.6' 'libpng' 'libtiff' 'libjpeg' 'zlib' 'glib2' 'libexif' 'openexr')
makedepends=('make' 'pkgconfig' 'perl')
options=('!libtool')
source=("http://www.vips.ecs.soton.ac.uk/vips-$mainver/vips-${pkgver}.tar.gz")

build() {
  cd ${startdir}/src/vips-${pkgver}
  ./configure --prefix=/usr --without-python
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
