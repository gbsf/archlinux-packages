# $Id$
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=kdesdk
pkgver=3.5.9
kdever=3.5.9 # if minor 0, then without .0
pkgrel=1
pkgdesc="KDE Software Development Kit."
arch=(i686 x86_64)
url="http://www.kde.org"
license=('GPL')
groups=('kde')
makedepends=('subversion')
depends=('kdelibs>=3.5.9' 'db>=4.6' 'flex' 'python' 'kdepim>=3.5.9') #apache is not a depend!

# for easier build, just uncomment the mirror you want to use
  mirror="ftp.solnet.ch/mirror/KDE"         # updated every 2 hours, very fast for Europe
# mirror="ftp.kde.org/pub/kde/"             # main server
# mirror="ibiblio.org/pub/mirrors/kde/"     # ibiblio mirror

source=(ftp://$mirror/stable/$kdever/src/$pkgname-$pkgver.tar.bz2)

build() {
  # Source the QT and KDE profile
  [ "$QTDIR" = "" ] && source /etc/profile.d/qt3.sh 
  [ "$KDEDIR" = "" ] && source /etc/profile.d/kde.sh
  # start building
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/opt/kde --disable-debug --disable-dependency-tracking \
  --with-svn-include=/usr/include/  --with-svn-lib=/usr/lib --enable-gcc-hidden-visibility \
  --enable-final --with-apr-config=/usr/bin/apr-1-config --with-apu-config=/usr/bin/apu-1-config 
  #        --enable-final # remove this if you build with < 512mb ram.
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}
md5sums=('fd86abfe0ac7c5af61b15eb5367d0399')
