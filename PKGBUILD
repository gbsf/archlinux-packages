# $Id: PKGBUILD,v 1.2 2005/09/04 18:49:07 tobias Exp $
# Committer: Tobias Kieslich <tobias@justdreams.de>

pkgname=gimageview
pkgver=0.2.27
pkgrel=2
pkgdesc="An image browser and viewer"
depends=('gtk2' 'libjpeg' 'libpng' 'xine-lib' 'librsvg')
makedepends=('intltool')
source=(http://dl.sourceforge.net/sourceforge/gtkmmviewer/$pkgname-$pkgver.tar.gz)
url="http://gtkmmviewer.sourceforge.net/"
md5sums=('878a272bae2d79c899a597f9d1dd8078')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr \
    --with-gtk2 --with-librsvg --with-xine \
    --enable-exif 
  make || return 1
  make prefix=$startdir/pkg/usr install
   # correct and extend the .desktop file
  echo 'Categories=Application;Graphics;2DGraphics;' \
    >> $startdir/pkg/usr/share/gnome/apps/Graphics/$pkgname.desktop
  echo 'MimeType=image/bmp;image/gif;image/jpeg;image/jpg;image/pjpeg;image/png;image/tiff;image/x-bmp;image/x-pcx;image/x-png;image/x-portable-bitmap;image/x-portable-pixmap;image/x-sgi;image/x-sun-raster;image/x-tga;image/x-xbitmap;' \
    >> $startdir/pkg/usr/share/gnome/apps/Graphics/$pkgname.desktop
  install -Dm644 $startdir/pkg/usr/share/gnome/apps/Graphics/$pkgname.desktop \
    $startdir/pkg/usr/share/applications/$pkgname.desktop
  rm -rf $startdir/pkg/usr/share/gnome
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
# vim: syntax=sh
