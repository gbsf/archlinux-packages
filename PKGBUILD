# $Id$
# Maintainer: Tom Killian <tom@archlinux.org>

pkgname=rt2x00-rt71w-fw
pkgver=1.8
pkgrel=2
pkgdesc="Firmware for the rt2x00 wireless drivers"
arch=(i686 x86_64)
url="http://www.ralinktech.com/ralink/Home/Support/Linux.html"
license=('RALINK')
source=(http://www.ralinktech.com.tw/data/RT71W_Firmware_V${pkgver}.zip)

build() {
  cd $startdir/src/RT71W_Firmware_V${pkgver}
  install -Dm644 rt73.bin $startdir/pkg/lib/firmware/rt73.bin || return 1
}
md5sums=('1e7a5dc574e0268574fcda3fd5cf52f7')
