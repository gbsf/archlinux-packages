# $Id$
# Maintainer: Alexander Baldeck <alexander@archlinux.org> 
pkgname=koffice-l10n-en_gb
pkgver=1.6.3
pkgrel=2
pkgdesc="British English KOffice translation."
license=('GPL')
arch=(i686 x86_64)
url="http://www.koffice.org"
depends=('koffice>=1.6.3')
source=(http://download.kde.org/stable/koffice-$pkgver/src/koffice-l10n/$pkgname-$pkgver.tar.bz2)
replaces=koffice-i18n-en_GB

build() {
  cd $startdir/src/${pkgname}-${pkgver}
  ./configure --prefix=/opt/kde --disable-debug
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}

md5sums=('468c3ac77b57de10e1cb7c99d184a443')
