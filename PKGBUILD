# $Id$
# Maintainer: Aaron Griffin <aaron@archlinux.org>

pkgname=gxine
pkgver=0.5.11
pkgrel=1
url="http://xinehq.de/"
pkgdesc="A free video player for Unix"
arch=(i686 x86_64)
depends=('gtk2' 'xine-lib' 'spidermonkey')
source=(http://easynews.dl.sourceforge.net/sourceforge/xine/$pkgname-$pkgver.tar.bz2)
options=(nolibtool)
md5sums=('b210d1f6e3eab3ff496c1db9e09dbcd0')

build()
{
  cd $startdir/src/gxine-$pkgver

  #integration wizard segfaults with gnome and does nothing for KDE (code incomplete)
  ./configure --prefix=/usr --sysconfdir=/etc --disable-integration-wizard \
        --mandir=/usr/man --with-x --without-mozjs --with-spidermonkey=/usr/include/js
  make|| return 1

  make DESTDIR=$startdir/pkg install

  mkdir -p $startdir/pkg/opt/mozilla/lib/plugins/
  ln -sf /usr/lib/gxine/gxineplugin.so $startdir/pkg/opt/mozilla/lib/plugins/
}
