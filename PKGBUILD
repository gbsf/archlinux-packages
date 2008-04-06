# $Id: PKGBUILD,v 1.6 2007/09/27 23:06:24 aaron Exp $
# Maintainer : Aaron Griffin <aaron@archlinux.org>
# Contributor: Hugo Ideler <hugoideler@dse.nl>

pkgname=slim
pkgver=1.3.0
pkgrel=2
pkgdesc="Simple Login Manager for X11"
arch=(i686 x86_64)
url="http://slim.berlios.de"
backup=(etc/slim.conf)
depends=(gcc libxmu libxft libjpeg libpng bash)
install=slim.install
license=('GPL')
source=(http://download.berlios.de/$pkgname/$pkgname-$pkgver.tar.gz
        slim slim.logrotate)

build() {
  cd $startdir/src/$pkgname-$pkgver

  sed -i "s|/usr/X11R6/include|/usr/include/xorg|g" Makefile
  cp /usr/include/shadow.h . #wtf is going on with this? it works fine if copied locally
  sed -i "s|/usr/X11R6/|/usr/|g" Makefile
  make || return 1

  sed -i "s|/usr/X11R6/include|/usr/include/xorg|g" slim.conf
  sed -i "s|/usr/X11R6/|/usr/|g" slim.conf
  make DESTDIR=$startdir/pkg install

  install -D -m755 -o root -g root $startdir/src/slim $startdir/pkg/etc/rc.d/slim
  install -D -m644 -o root -g root $startdir/src/slim.logrotate $startdir/pkg/etc/logrotate.d/slim

  # let's make this a tad safer... "sane defaults" and all
  sed -i "s@#xserver_arguments.*@xserver_arguments   -nolisten tcp vt07@"\
    $startdir/pkg/etc/slim.conf

  # lockfile is defaulted in /var/run, which is not cleared at boot
  # (causes problems) - thanks bogomipz
  sed -i 's@/var/run/slim.lock@/var/lock/slim.lock@' $startdir/pkg/etc/slim.conf
}
