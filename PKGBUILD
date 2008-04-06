# $Id: PKGBUILD,v 1.5 2008/02/05 19:37:06 tpowa Exp $
#Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=unison
pkgver=2.27.57
pkgrel=1
pkgdesc="Unison is a file-synchronization tool"
arch=(i686 x86_64)
license=('GPL2')
url="http://www.cis.upenn.edu/~bcpierce/unison"
depends=('glibc')
makedepends=('ocaml' 'lablgtk' 'lablgtk2' 'imagemagick')
source=(http://www.cis.upenn.edu/~bcpierce/unison/download/releases/stable/$pkgname-$pkgver.tar.gz \
        $pkgname.desktop)
options=(!makeflags)
install=unison.install

build() {
  cd $startdir/src/$pkgname-$pkgver
  CFLAGS=""
  make clean
  make UISTYLE=text DEBUGGING=false THREADS=true || return 1
  mkdir -p $startdir/pkg/usr/bin 
  install -Dm755 unison $startdir/pkg/usr/bin/unison
 # clean the builddir and rebuild with gtk support
  make clean
  make UISTYLE=gtk DEBUGGING=false THREADS=true || return 1
  install -Dm755 unison $startdir/pkg/usr/bin/unison-gtk
 # clean the builddir and rebuild with gtk2 support
  make clean
  make UISTYLE=gtk2 DEBUGGING=false THREADS=true || return 1
  install -Dm755 unison $startdir/pkg/usr/bin/unison-gtk2
 # install a .desktop file; create a compliant icon from ico file and install the png
  install -Dm644 ../$pkgname.desktop $startdir/pkg/usr/share/applications/$pkgname.desktop
  convert win32rc/U.ico unison.png
  install -Dm644 ${pkgname}-1.png  $startdir/pkg/usr/share/pixmaps/$pkgname.png
 # make symlink for .desktop file
  cd $startdir/pkg//usr/bin
  ln -s unison-gtk2 unison-x11
}
md5sums=('4ba0a3e4bf4b4ad0c063f86391371f78'
         '2daecba7705455a8e4b769e48b059872')
