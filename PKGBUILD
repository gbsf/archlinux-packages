# $Id$
# Maintainer: aurelien <aurelien@archlinux.org>
# Contributor: Aurelien Foret <orelien@chez.com>
pkgname=ksymoops
pkgver=2.4.11
pkgrel=1
pkgdesc="A Linux kernel Oops file troubleshooting tool"
url="ftp://ftp.kernel.org/pub/linux/utils/kernel/ksymoops/v2.4"
depends=('glibc')
source=(ftp://ftp.kernel.org/pub/linux/utils/kernel/ksymoops/v2.4/$pkgname-$pkgver.tar.bz2)
md5sums=('4a8249e182a5dbc75e566d162e9f3314')

build() {
  cd $startdir/src/$pkgname-$pkgver
  make || return 1
  make INSTALL=/bin/install INSTALL_PREFIX=$startdir/pkg/usr install
}
