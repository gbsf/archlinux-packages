# $Id: PKGBUILD,v 1.14 2007/03/24 09:25:55 tpowa Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=zip
pkgver=2.32
pkgrel=1
pkgdesc="Creates PKZIP-compatible .zip files"
arch=(i686 x86_64)
url="http://www.info-zip.org/pub/infozip/Zip.html"
depends=('glibc')
makedepends=('unzip')
source=(ftp://ftp.info-zip.org/pub/infozip/src/zip232.tgz
        ftp://ftp.info-zip.org/pub/infozip/src/zcrypt.zip)
md5sums=('8a4da4460386e324debe97f3b7fe4d96' '0c969ba1661183b041a142945ed2710e')

build() {
   cd $startdir/src/$pkgname-$pkgver
   echo "A"| unzip ../zcrypt.zip
   make -f unix/Makefile LOCAL_ZIP="$CFLAGS" prefix=/usr generic_gcc || return 1
   make -f unix/Makefile INSTALL=`which install` prefix=$startdir/pkg/usr install
}
