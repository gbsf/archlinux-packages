#$Id$
#Maintainer: Aaron Griffin <aaron@archlinux.org>

pkgname=ndiswrapper
_kernver=2.6.24-ARCH
pkgver=1.52
pkgrel=2
pkgdesc="Module for NDIS (Windows Network Drivers) drivers supplied by vendors. For stock arch 2.6 kernel."
license=('GPL')
arch=(i686 x86_64)
url="http://ndiswrapper.sourceforge.net"
install="ndiswrapper.install"
depends=("ndiswrapper-utils=$pkgver" 'kernel26>=2.6.24.3-4' 'kernel26<=2.6.25-0')
source=(http://easynews.dl.sourceforge.net/sourceforge/ndiswrapper/ndiswrapper-$pkgver.tar.gz)
md5sums=('3ab2aeef398d29df3a40d40fa499405e')

build()
{
  cd $startdir/src/ndiswrapper-$pkgver/driver
  make KVERS=$_kernver 
  make DESTDIR=$startdir/pkg KVERS=$_kernver install || return 1
  rm $startdir/pkg/lib/modules/$_kernver/modules.* #wtf?

  sed -i -e "s/KERNEL_VERSION='.*'/KERNEL_VERSION='${_kernver}'/" $startdir/*.install
  # move it to correct kernel directory
  mkdir -p $startdir/pkg/lib/modules/$_kernver/kernel/drivers/net/wireless/ndiswrapper
  mv $startdir/pkg/lib/modules/$_kernver/misc/* $startdir/pkg/lib/modules/$_kernver/kernel/drivers/net/wireless/ndiswrapper/
  rm -r $startdir/pkg/lib/modules/$_kernver/misc/
}
