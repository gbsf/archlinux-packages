# $Id: PKGBUILD,v 1.56 2008/03/21 17:14:01 tpowa Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>


_kernver=2.6.24-ARCH;

pkgname=slmodem
pkgver=2.9.11
pkgrel=40

pkgdesc="Drivers for the Smartlink winmodems. For stock arch 2.6 kernel "
arch=(i686)
license=('custom:"Smartlink"')
url="http://linmodems.technion.ac.il/packages/smartlink/" 
depends=('kernel26>=2.6.24.3-4' 'kernel26<=2.6.25-0' 'slmodem-utils') 
install=slmodem.install 
source=(http://linmodems.technion.ac.il/packages/smartlink/slmodem-2.9.11-20080126.tar.gz \
  http://linmodems.technion.ac.il/packages/smartlink/ungrab-winmodem-20080126.tar.gz
  kernel-2.6.24.patch) 

build() { 
  cd $startdir/src/ungrab-winmodem-20080126
  make KERNEL_DIR=/lib/modules/${_kernver}/build || return 1
  install -D -m644 ungrab-winmodem.ko $startdir/pkg/lib/modules/${_kernver}/kernel/drivers/net/ungrab-winmodem.ko
  cd $startdir/src/$pkgname-$pkgver-20080126
  patch -Np0 -i ../kernel-2.6.24.patch || return 1
  make KERNEL_DIR=/lib/modules/${_kernver}/build SUPPORT_ALSA=1 DESTDIR=$startdir/pkg drivers || return 1 
  # Install kernel modules
  install -D -m 644 drivers/slamr.ko $startdir/pkg/lib/modules/${_kernver}/kernel/drivers/net/slamr.ko
  install -D -m 644 drivers/slusb.ko $startdir/pkg/lib/modules/${_kernver}/kernel/drivers/usb/net/slusb.ko 
  sed -i -e "s/KERNEL_VERSION=.*/KERNEL_VERSION=${_kernver}/g" $startdir/slmodem.install
}
md5sums=('8670dd7e1e1a46296ac4c80f7ac0471d'
         '25244ef3924566866f4fae2feca78218'
         '5a5e313a5040fcff7bf11c33f008e61e')
