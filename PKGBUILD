# $Id: PKGBUILD,v 1.1 2007/12/11 20:16:54 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: tardo <tardo@nagi-fanboi.net>

pkgname=ndesk-dbus-glib
pkgver=0.4.1
pkgrel=1
pkgdesc="C# GLib implementation of D-Bus"
arch=('i686' 'x86_64')
url="http://www.ndesk.org/DBusSharp"
license=('custom')
depends=('ndesk-dbus>=0.6')
makedepends=('pkgconfig')
options=(!makeflags)
source=(http://www.ndesk.org/archive/dbus-sharp/$pkgname-$pkgver.tar.gz)
md5sums=('7faf8770b214956fa9de009def550826')

build() {
  cd $startdir/src/$pkgname-$pkgver
  export MONO_SHARED_DIR="${startdir}/src/.wabi"
  mkdir -p "${MONO_SHARED_DIR}"
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
  install -D COPYING $startdir/pkg/usr/share/licenses/$pkgname/COPYING
}
