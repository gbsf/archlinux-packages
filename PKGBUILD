# $Id: PKGBUILD,v 1.6 2007/04/15 09:19:34 james Exp $
# Maintainer: James Rayner <james@archlinux.org>
# Contributor: lucke <lucke at o2 dot pl>

pkgname=basket
pkgver=1.0.2
pkgrel=1
pkgdesc="All-purpose notes taker for KDE."
arch=(i686 x86_64)
url="http://basket.kde.org/"
depends=('kdelibs' 'gpgme')
license="GPL"
source=(http://basket.kde.org/downloads/$pkgname-$pkgver.tar.gz)
build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/opt/kde
  make || return 1
  make DESTDIR=$startdir/pkg install
}

