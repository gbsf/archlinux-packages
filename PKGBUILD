# $Id: PKGBUILD,v 1.6 2005/09/29 15:58:10 kevin Exp $
# Maintainer: Kevin Piche <kevin@archlinux.org>
# Contributor: Manolis Tzanidakis

pkgname=iptraf
pkgver=3.0.0
pkgrel=1
pkgdesc="An IP network monitor."
url="http://cebu.mozcom.com/riker/iptraf/index.html"
depends=('ncurses')
source=(ftp://iptraf.seul.org/pub/iptraf/$pkgname-$pkgver.tar.gz
iptraf-$pkgver-headerfix.patch)
md5sums=('377371c28ee3c21a76f7024920649ea8' 'cb388a8dc2806cf55330251337e2039f')

build() {
  cd $startdir/src/$pkgname-$pkgver/src
	patch -Np0 -i ../../iptraf-$pkgver-headerfix.patch
  /bin/sed -i -e s:/var/local/iptraf:/var/lib/iptraf: \
      -e s:/usr/local/bin:/usr/sbin: dirs.h
  /usr/bin/make CFLAGS="$CFLAGS" DEBUG="" TARGET="/usr/sbin" \
      WORKDIR="/var/lib/iptraf" clean all || return 1

  for sbin in iptraf rvnamed; do
    /bin/install -D -m755 $sbin $startdir/pkg/usr/sbin/$sbin
  done

  cd ../Documentation
  for man in *.8; do
    /bin/install -D -m644 $man $startdir/pkg/usr/man/man8/$man
  done
  /bin/mkdir -p $startdir/pkg/var/{lib,log,run}/iptraf
}
# vim: ts=2: ft=sh
