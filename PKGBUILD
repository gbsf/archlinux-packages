# $Id: PKGBUILD,v 1.12 2007/11/20 06:45:49 tpowa Exp $
# Maintainer: Tom Killian <tom@archlinux.org>

pkgname=openswan-klips
pkgver=2.4.10
pkgrel=2
pkgdesc="Openswan's KLIPS kernel module, supporting ipsecX virtual interfaces. For kernel26"
url="http://www.openswan.org"
license=('GPL' 'custom')
arch=('i686' 'x86_64')
depends=('openswan' 'kernel26>=2.6.23.8-1')
source=(http://www.openswan.org/download/openswan-$pkgver.tar.gz)
install=openswan-klips.install

_kernver=2.6.23-ARCH

build() {
  cd $startdir/src/openswan-$pkgver

  make KERNELSRC=/usr/src/linux-$_kernver module || return 1
  install -Dm644 modobj26/ipsec.ko \
  $startdir/pkg/lib/modules/$_kernver/kernel/net/ipsec/ipsec.ko
  
  # Update kernel version in .install script
  sed -i -e "s/KERNEL_VERSION=.*/KERNEL_VERSION=$_kernver/g" $startdir/openswan-klips.install
}
md5sums=('2b36785342c74d524d8d86bde89a445f')
