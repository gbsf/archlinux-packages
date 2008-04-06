# $Id: PKGBUILD,v 1.9 2008/03/30 13:17:27 jgc Exp $
# Contributor : Rohan Dhruva

pkgname=gnash-common
pkgver=0.8.2
pkgrel=2
pkgdesc="A GNU Flash movie player."
arch=('i686' 'x86_64')
url="http://www.gnu.org/software/gnash/"
license=("GPL3")
depends=('fontconfig' 'libxml2' 'curl' 'libtool>=2.2-2' 'ffmpeg>=20071204-1' 'boost>=1.34.1-2' 'libxi' 'libdca')
makedepends=('pkgconfig' 'diffutils' 'agg')
source=(http://ftp.gnu.org/gnu/gnash/${pkgver}/gnash-${pkgver}.tar.bz2)
options=('!libtool' '!emptydirs')
provides=('gnash')
replaces=('gnash')
md5sums=('05cac831181be3fb40cbf3c00ab25c0f')

build() {
  cd $startdir/src/gnash-$pkgver

#  patch -Np0 -i ../boost_logging.diff || return 1
#  patch -Np0 -i ../more_boost_fixes.diff || return 1
  
  ./configure --prefix=/usr \
   --disable-kparts \
   --disable-nsapi \
   --enable-gui=gtk \
   --enable-z \
   --enable-jpeg \
   --enable-renderer=agg \
   --enable-media=ffmpeg \
   --enable-write \
   --disable-cygnal \
   --disable-static

  make || return 1
  make DESTDIR=$startdir/pkg install

  # cleanup for the plugins
  rm -f $startdir/pkg/usr/bin/gtk-gnash
}
