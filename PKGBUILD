# $Id: PKGBUILD,v 1.12 2007/06/09 21:26:01 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org> 
pkgname=koffice-l10n-cs
pkgver=1.6.3
pkgrel=2
pkgdesc="Czech KOffice translation."
license=('GPL')
arch=(i686 x86_64)
url="http://www.koffice.org"
depends=('koffice>=1.6.3')
source=(http://download.kde.org/stable/koffice-$pkgver/src/koffice-l10n/$pkgname-$pkgver.tar.bz2)
replaces=koffice-i18n-cs

build() {
  cd $startdir/src/${pkgname}-${pkgver}
  ./configure --prefix=/opt/kde --disable-debug
  make || return 1
  make DESTDIR=$startdir/pkg install || return 1
}

md5sums=('d893774830fa05b2450018ae70fcd267')
