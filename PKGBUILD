# $Id: PKGBUILD,v 1.54 2008/03/03 19:02:29 tpowa Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=kdegraphics
pkgver=3.5.9
kdever=3.5.9 # if minor 0, then without .0
pkgrel=1
pkgdesc="KDE Graphics Programs"
arch=(i686 x86_64)
url="http://www.kde.org"
license=('GPL')

groups=('kde')
makedepends=('libusb' 'tetex' 'pkgconfig')
depends=('kdelibs>=3.5.9' 'imlib' 'poppler-qt3>=0.6' 'glut' 'sane' 'libgphoto2' 'lcms' 'fribidi' 'ghostscript' 't1lib' 'xorg-server-utils')

# for easier build, just uncomment the mirror you want to use
  mirror="ftp.solnet.ch/mirror/KDE"         # updated every 2 hours, very fast for Europe
# mirror="ftp.kde.org/pub/kde/"             # main server
# mirror="ibiblio.org/pub/mirrors/kde/"     # ibiblio mirror


source=(ftp://$mirror/stable/$kdever/src/$pkgname-$pkgver.tar.bz2 \
	kamera.patch)


build() {
  # Source the QT and KDE profile
  [ "$QTDIR" = "" ] && source /etc/profile.d/qt3.sh 
  [ "$KDEDIR" = "" ] && source /etc/profile.d/kde.sh
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/opt/kde --disable-debug --disable-dependency-tracking --disable-kpdf-drm --enable-final\
  -with-gphoto2-includes=/usr/include/gphoto2 --with-gphoto2-libraries=/usr/lib/ --enable-gcc-hidden-visibility\
  --enable-multithreaded-kpdf 
  #           --enable-final # remove this if you build with < 512mb ram.
  # fix kamera compilation
  patch -Np2 -i ../kamera.patch || return 1
  make || return 1
  make DESTDIR=$startdir/pkg install
}
md5sums=('a05791b09b1eb4ca25788605c2b00a13'
         '6ade32b438c26cd06e8fac6bd9505357')
