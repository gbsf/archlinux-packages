# $Id$
# Maintainer: Kevin Piche <kevin@archlinux.org>

pkgname=cpudyn
pkgver=1.0.1
pkgrel=1
pkgdesc="CPU Dynamic Frecuency Control."
url="http://mnm.uib.es/~gallir/cpudyn"
depends=('glibc')
backup=(etc/conf.d/cpudyn)
source=($url/download/$pkgname-$pkgver.tgz cpudyn.confd cpudyn.rc)
md5sums=('670d32eb953f99ba04aee44848864228' '0d6226a3594bbd526d98d704440c987b'\
         '8ab37c6554adea48f075b28a40b75b2b')

build() {
	cd $startdir/src/$pkgname
	make || return 1
	install -D -m755 cpudynd $startdir/pkg/usr/sbin/cpudynd
	install -D -m644 cpudynd.8.gz $startdir/pkg/usr/man/man8/cpudynd.8.gz
	install -D -m755 $startdir/src/cpudyn.rc $startdir/pkg/etc/rc.d/cpudyn
	install -D -m644 $startdir/src/cpudyn.confd $startdir/pkg/etc/conf.d/cpudyn
}

# vim:ts=2:ft=sh
