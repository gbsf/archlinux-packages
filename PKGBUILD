# $Id: PKGBUILD,v 1.19 2008/03/21 17:09:22 tpowa Exp $
# Maintainer: James Rayner <iphitus@gmail.com>

pkgname=rt2500
_kernver=2.6.24-ARCH
pkgver=1.1.0_B4
_pkgver=1.1.0-b4
pkgrel=21
pkgdesc="Drivers for rt2500 chipset wireless cards"
url="http://rt2x00.serialmonkey.com/wiki/index.php/Main_Page"
depends=('kernel26>=2.6.24.3-4' 'kernel26<=2.6.25-0')
arch=('i686' 'x86_64')
install=rt2500.install
source=(http://optusnet.dl.sourceforge.net/sourceforge/rt2400/rt2500-${_pkgver}.tar.gz \
	kernel-2.6.22.patch kernel-2.6.24.patch)
md5sums=('83b8b9a091705c08d99268479f3b3b6a'
         'a74f8e9cbba7b29620f11fba8fd7c50d'
	 'ccf0da667cc6642dacf39dea1aac254f')

build() {
  cd $startdir/src/rt2500-$_pkgver/
  patch -Np1 -i ../kernel-2.6.22.patch || return 1
  patch -Np1 -i ../kernel-2.6.24.patch || return 1
  cd $startdir/src/rt2500-$_pkgver/Module
  make KERNDIR=/lib/modules/$_kernver/build
  install -D -m 644 rt2500.ko $startdir/pkg/lib/modules/$_kernver/kernel/drivers/net/wireless/rt2500.ko
  sed -i -e "s/KERNEL_VERSION='.*'/KERNEL_VERSION='${_kernver}'/" $startdir/*.install
}
