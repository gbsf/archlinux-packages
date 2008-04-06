# $Id: PKGBUILD,v 1.14 2006/09/27 11:46:02 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=dbus-sharp
pkgver=0.63
pkgrel=1
pkgdesc="GLib bindings for DBUS"
arch=(i686)
url="http://www.freedesktop.org/software/dbus"
depends=('dbus-glib>=0.71')
makedepends=('pkgconfig')
options=('nolibtool')
source=(http://www.archlinux.org/~jgc/dbus/${pkgname}-${pkgver}.tar.gz
	dbus-sharp-0.63-nogtk.patch
	dbus-0.62-mono-no-abi-version-change.patch)
md5sums=('f2e3e008619bcc373d9a65f323380a36' '5a48876b174c3aa082040ebaef87e885'\
         'd266bc9c081d3026bbd33c5ed0ec681c')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  export MONO_SHARED_DIR="${startdir}/src/.wabi"
  mkdir -p "${MONO_SHARED_DIR}"

  patch -Np1 -i ${startdir}/src/dbus-sharp-0.63-nogtk.patch || return 1
  patch -Np1 -i ${startdir}/src/dbus-0.62-mono-no-abi-version-change.patch || return 1
  autoreconf --force --install

  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
      --disable-tests --disable-verbose-mode --disable-asserts

  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  rm -rf "${MONO_SHARED_DIR}"
}
