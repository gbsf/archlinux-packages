# $Id$
# Maintainer: James Rayner <james@archlinux.org>
# Contributor: Giovanni Scafora <linuxmania@gmail.com>

_kernver=2.6.19-ARCH
pkgname=at76c503a-cvs
pkgver=20061223
pkgrel=1
pkgdesc="Another driver for the Atmel AT76C503A based USB WLAN adapters from latest CVS version."
url="http://developer.berlios.de/projects/at76c503a"
license="GPL"
depends=('wireless_tools' 'kernel26' 'at76c503a-fw-cvs')
provides=('at76c503a')
conflicts=('at76c503a')
makedepends=('cvs')
install=at76c503a-cvs.install
source=()
md5sums=()

_cvsroot=":pserver:anonymous@cvs.berlios.de:/cvsroot/at76c503a"
_cvsmod="at76c503a"

build() {
  cd $startdir/src
  msg "Connecting to $_cvsmod.berlios.de CVS server..."
  cvs -z3 -d $_cvsroot co -D $pkgver -f $_cvsmod
  cd $_cvsmod

  msg "CVS checkout done or server timeout"
  cp -r ../$_cvsmod ../$_cvsmod-build
  cd ../$_cvsmod-build

  msg "Starting make..."
  sed -i -e "s:config.h:autoconf.h:g" at76c503.c
  make KERNEL_PATH=/lib/modules/${_kernver}/build || return 1

  #Install kernel module
  install -D -m644 at76_usb.ko $startdir/pkg/lib/modules/${_kernver}/kernel/drivers/net/wireless/at76c503a/at76_usb.ko

  sed -i -e "s/KERNEL_VERSION='.*'/KERNEL_VERSION='${_kernver}'/" $startdir/*.install

  rm -r $startdir/src/$_cvsmod-build
}
