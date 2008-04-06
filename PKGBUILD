# $Id: PKGBUILD,v 1.2 2005/06/10 19:15:14 judd Exp $
# Maintainer: Judd Vinet <jvinet@zeroflux.org>
pkgname=ipvsadm
pkgver=1.24
pkgrel=1
pkgdesc="The IP Virtual Server administration utility"
url="http://www.linuxvirtualserver.org/software/ipvs.html"
depends=('iptables')
backup=('etc/conf.d/ipvsadm')
source=(http://www.linuxvirtualserver.org/software/kernel-2.6/ipvsadm-$pkgver.tar.gz ipvsadm ipvsadm.conf.d)
md5sums=('a9378adf5af7a799535b4c26cf3bcf10' 'a8254be4e3b93f4cebe3d3d92515e5ee'\
         '3a7bc36ca81db2e0373abf9b90369d4f')

build() {
  cd $startdir/src/$pkgname-$pkgver
  make INCLUDE="-I/usr/src/linux-`uname -r`/include -I.. -I." || return 1
  make BUILD_ROOT=$startdir/pkg install
  install -D -m755 ../ipvsadm $startdir/pkg/etc/rc.d/ipvsadm
  install -D -m644 ../ipvsadm.conf.d $startdir/pkg/etc/conf.d/ipvsadm
  install -d -m755 $startdir/pkg/etc/ipvsadm
}
