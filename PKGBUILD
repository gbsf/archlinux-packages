# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Judd Vinet <jvinet@zeroflux.org>

pkgname=gtk
pkgver=1.2.10
pkgrel=8
pkgdesc="The GTK+ toolkit"
arch=('i686' 'x86_64')
url="http://www.gtk.org/"
license=('LGPL')
depends=('libxi' 'glib')
options=('!libtool')
source=(ftp://ftp.gtk.org/pub/gtk/v1.2/gtk+-$pkgver.tar.gz \
	aclocal-fixes.patch)
md5sums=('4d5cb2fc7fb7830e4af9747a36bfce20' 'c59d4906602d99a7468f7334b6fc3b4e')
sha1sums=('a5adcb909257da01ae4d4761e1d41081d06e4d7c' 'b034e33efb85d27f3f3fb082c404e3b6ea79259f')

build() {
  cd $startdir/src/gtk+-$pkgver
  if [ "$CARCH" == "x86_64" ]; then
    rm config.guess config.sub
    ln -s /usr/share/libtool/config.guess config.guess
    ln -s /usr/share/libtool/config.sub config.sub
  fi
  patch -Np0 -i ${startdir}/src/aclocal-fixes.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc --with-xinput=xfree
  make || return 1
  make DESTDIR=$startdir/pkg install
  cd $startdir/pkg/usr/include
  ln -s gtk-1.2/gtk gtk
}
