# $Id: PKGBUILD,v 1.4 2005/12/29 22:03:19 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: damir <damir@archlinux.org>

pkgname=ifp-line
pkgver=0.3
pkgrel=1
pkgdesc="iRiver iFP open-source driver if you use the Manager version"
url="http://ifp-driver.sourceforge.net/ifp-line/"
depends=('libusb' 'glibc')
source=(http://switch.dl.sourceforge.net/sourceforge/ifp-driver/$pkgname-$pkgver.tar.gz)


build() {
   cd $startdir/src/$pkgname-$pkgver
   ./configure --prefix=/usr
   make || return 1
   mkdir -p $startdir/pkg/usr/bin
   make DESTDIR=$startdir/pkg INSTALL=/bin/install install
}

