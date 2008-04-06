# $Id: PKGBUILD,v 1.5 2007/11/16 00:02:40 daniel Exp $
# Maintainer: Dan McGee <dan@archlinux.org>

pkgname=zd1211-firmware
pkgver=1.4
pkgrel=2
pkgdesc="Firmware for the in-kernel26 zd1211rw wireless driver"
arch=(i686 x86_64)
url="http://zd1211.wiki.sourceforge.net/"
# firmware files are here:
# http://sourceforge.net/project/showfiles.php?group_id=129083
license=('GPL')
provides=('zd1211')
source=(http://downloads.sourceforge.net/zd1211/zd1211-firmware-$pkgver.tar.bz2)
md5sums=('19f28781d76569af8551c9d11294c870')

build() {
  cd $startdir/src/zd1211-firmware
  mkdir -p $startdir/pkg/lib/firmware/zd1211/
  # just unpack the files to the firmware directory
  install -m644 * $startdir/pkg/lib/firmware/zd1211/ || return 1
}
