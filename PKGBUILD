# $Id: PKGBUILD,v 1.4 2007/06/09 21:44:51 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org> 
pkgname=koffice-l10n-zh_tw
pkgver=1.6.3
pkgrel=2
pkgdesc="Chinese Traditional KOffice translation."
license=('GPL')
arch=(i686 x86_64)
url="http://www.koffice.org"
depends=('koffice>=1.6.3')
source=(http://download.kde.org/stable/koffice-$pkgver/src/koffice-l10n/$pkgname-$pkgver.tar.bz2)
replaces=koffice-i18n-zh_TW

build() {
  cd $startdir/src/${pkgname}-${pkgver}
  ./configure --prefix=/opt/kde --disable-debug
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}

md5sums=('7c7c3787a45743ae9d06938829381d2e')
