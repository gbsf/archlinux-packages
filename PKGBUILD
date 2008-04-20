# $Id: PKGBUILD 356 2008-04-18 22:56:27Z aaron $
# Maintainer: Thomas Baechler <thomas@archlinux.org>

pkgname=b43-fwcutter
pkgver=011
pkgrel=1
pkgdesc="firmware extractor for the bcm43xx kernel module"
url="http://linuxwireless.org/en/users/Drivers/b43"
depends=('glibc')
license=('GPL')
arch=('i686' 'x86_64')
source=(http://bu3sch.de/b43/fwcutter/${pkgname}-${pkgver}.tar.bz2)
md5sums=('3db2f4de85a459451f5b391cf67a8d44')

build()
{
  cd $startdir/src/$pkgname-$pkgver
  make || return 1
  install -D -m755 b43-fwcutter $startdir/pkg/usr/bin/b43-fwcutter || return 1
  install -D -m644 b43-fwcutter.1 $startdir/pkg/usr/share/man/man1/b43-fwcutter.1 || return 1
}
