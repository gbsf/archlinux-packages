# $Id: PKGBUILD,v 1.15 2008/01/05 02:35:22 eric Exp $
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: dorphell <dorphell@archlinux.org>

pkgname=glib
pkgver=1.2.10
pkgrel=7
pkgdesc="Common C routines used by Gtk+ and other libs"
arch=('i686' 'x86_64')
url="http://www.gtk.org/"
license=('LGPL')
depends=('glibc')
options=('!libtool')
source=(ftp://ftp.gtk.org/pub/gtk/v1.2/$pkgname-$pkgver.tar.gz \
	gcc340.patch \
	aclocal-fixes.patch)
md5sums=('6fe30dad87c77b91b632def29dd69ef9' '877b3330e822a4be69a0f8a8c268cfd7'\
         'e52c4b88427b9785bb8049dbdc9ff6fb')
sha1sums=('e5a9361c594608d152d5d9650154c2e3260b87fa'\
          'a2cc224a66aeffdcac16ebd9e8af18143cf54918'\
          'ae4438cf56c0c9264ee36f6973fb445f9a820be0')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 -i ../gcc340.patch || return 1
  patch -Np0 -i ../aclocal-fixes.patch || return 1

  #Arch64 fixes --build/host
  ./configure --prefix=/usr #--host=i686-pc-linux-gnu
  make || return 1
  make DESTDIR=$startdir/pkg install
}
