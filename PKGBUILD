# $Id$
# Maintainer: eric <eric@archlinux.org>
# Contributor: Scott Robbins <scottro@nyc.rr.com>

pkgname=fortune-mod-buffy
pkgver=1
pkgrel=1
pkgdesc="A collection --- fortune cookies --- from Buffy the Vampire Slayer. "
depends=(fortune-mod)
source=(http://home.nyc.rr.com/computertaijutsu/buffy)
url="http://home.nyc.rr.com/computertaijutsu/buffquote.html"
md5sums=('5adad945b1d1ac5bf0fb2deb00e68916')

build() {
  cd $startdir/src
  /bin/mkdir -p $startdir/pkg/usr/share/fortune
  /usr/sbin/strfile buffy
  /bin/cp $startdir/src/buffy* $startdir/pkg/usr/share/fortune
  /bin/chmod 644 $startdir/pkg/usr/share/fortune/*
}
