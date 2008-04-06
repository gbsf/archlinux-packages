# $Id: PKGBUILD,v 1.2 2008/03/05 22:54:54 tom Exp $
# Maintainer: James Rayner <iphitus@gmail.com>

pkgname=tiacx-firmware
pkgver=2
pkgrel=1
pkgdesc="Firmware for Texas Instruments ACX100/ACX111 wireless chips."
arch=('i686' 'x86_64')
url="http://acx100.sourceforge.net/"
license=('MPL')
install=tiacx-firmware.install
source=(http://www.kazer.org/acx-firmware-20060207.tar.bz2)

build() {
  mkdir -p $startdir/pkg/usr/share
  cp -r fw $startdir/pkg/usr/share/tiacx
  find $startdir/pkg -type d -exec chmod 755 {} \;
  find $startdir/pkg -type f -exec chmod 644 {} \;
}
md5sums=('b8efea38c2c598190604dfa297cc9675')
