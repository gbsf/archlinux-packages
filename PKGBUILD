# $Id: PKGBUILD,v 1.25 2008/03/03 19:04:55 tpowa Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=kde-i18n-en_gb
pkgver=3.5.9
pkgrel=1
kdever=3.5.9
pkgdesc="British Localization for KDE."
arch=(i686 x86_64)
license=(GPL)
url="http://i18n.kde.org/stats/gui/KDE_3.5_BRANCH/en_GB/index.php"
source=(ftp://ftp.kde.org/pub/kde/stable/$kdever/src/kde-i18n/kde-i18n-en_GB-$pkgver.tar.bz2)
depends=('kdebase>=3.5.9')


build() {
	cd $startdir/src
	cd kde-i18n-en_GB-$pkgver
	./configure --prefix=/opt/kde --disable-debug
	make || return 1
	make DESTDIR=$startdir/pkg install || return 1
}
md5sums=('2ff484173da22e8ca6257caeba0930c8')
