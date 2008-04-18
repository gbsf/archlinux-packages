# $Id$
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=kde-i18n-eo
pkgver=3.5.9
pkgrel=1
kdever=3.5.9
pkgdesc="Esperanto Localization for KDE."
arch=(i686 x86_64)
license=(GPL)
url="http://i18n.kde.org/stats/gui/KDE_3.5_BRANCH/eo/index.php"
source=(ftp://ftp.kde.org/pub/kde/stable/$kdever/src/kde-i18n/$pkgname-$pkgver.tar.bz2)
depends=('kdebase>=3.5.9')


build() {
	cd $startdir/src
	cd $pkgname-$pkgver
	./configure --prefix=/opt/kde --disable-debug
	make || return 1
	make DESTDIR=$startdir/pkg install || return 1
}
md5sums=('1a4f43840f0e9db500f19e2098afbd2c')
