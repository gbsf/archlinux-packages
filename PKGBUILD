# $Id: PKGBUILD,v 1.9 2004/07/11 22:28:17 judd Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=cdparanoia
pkgver=9.8
pkgrel=4
pkgdesc="A CD ripping application"
depends=('glibc')
source=(http://www.xiph.org/paranoia/download/cdparanoia-III-alpha9.8.src.tgz \
        cdparanoia.patch gcc34.patch)
md5sums=('7218e778b5970a86c958e597f952f193' '82512ebf8fcfe269e028c0b41b271b31'\
         '81c4261ab4d35c8bbab5210d7d12bc9c')

build() {
  cd $startdir/src/cdparanoia-III-alpha9.8
  patch -p0 -i ../cdparanoia.patch
  patch -Np1 -i ../gcc34.patch
  ./configure --prefix=/usr
  make || return 1
  make prefix=$startdir/pkg/usr install
}
