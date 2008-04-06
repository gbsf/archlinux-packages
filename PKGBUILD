# $Id: PKGBUILD,v 1.9 2008/04/02 13:46:54 eric Exp $
# Maintainer: Eric Belanger <eric@archlinux.org>

pkgname=ispell
pkgver=3.3.02
pkgrel=2
pkgdesc="An interactive spell-checking program for Unix"
arch=('i686' 'x86_64')
url="http://ficus-www.cs.ucla.edu/geoff/ispell.html"
license=("BSD")
depends=('ncurses')
options=('!makeflags')
source=(http://fmg-www.cs.ucla.edu/geoff/tars/${pkgname}-${pkgver}.tar.gz license.txt)
md5sums=('12087d7555fc2b746425cd167af480fe' 'bf51b6181b9914dedc266ba970bb7319')
sha1sums=('c0d98e1af3afb8e0b642717c03439ff8881e3d60' 'eb22e5376d1b50a96b32ede490b3f7b63e7c8010')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  sed -i 's/#undef USG/#define USG/' local.h.linux
  sed -i 's|/usr/local|/usr|' local.h.linux
  sed -i 's|/lib|/lib/ispell|' local.h.linux
  cp local.h.linux local.h
  make TMPDIR=/tmp all || return 1

# Installing binary tools
  install -D -m755 buildhash ${startdir}/pkg/usr/bin/buildhash
  install -D -m755 findaffix ${startdir}/pkg/usr/bin/findaffix
  install -D -m755 icombine ${startdir}/pkg/usr/bin/icombine
  install -D -m755 ijoin ${startdir}/pkg/usr/bin/ijoin
  install -D -m755 ispell ${startdir}/pkg/usr/bin/ispell
  install -D -m755 iwhich ${startdir}/pkg/usr/bin/iwhich
  install -D -m755 munchlist ${startdir}/pkg/usr/bin/munchlist
  install -D -m755 tryaffix ${startdir}/pkg/usr/bin/tryaffix

# Installing man pages
  install -D -m644 ispell.1 ${startdir}/pkg/usr/share/man/man1/ispell.1
  install -D -m644 ispell.5 ${startdir}/pkg/usr/share/man/man5/ispell.5

# Installing dictionnaries
  install -d ${startdir}/pkg/usr/bin ${startdir}/pkg/usr/lib/ispell
  install -m644 languages/american/americanmed.hash ${startdir}/pkg/usr/lib/ispell/americanmed.hash
  install -m644 languages/english/english.aff ${startdir}/pkg/usr/lib/ispell/english.aff
  ln -s americanmed.hash ${startdir}/pkg/usr/lib/ispell/american.hash
  ln -s americanmed.hash ${startdir}/pkg/usr/lib/ispell/english.hash

# Installing license
  install -D -m644 ${startdir}/src/license.txt ${startdir}/pkg/usr/share/licenses/${pkgname}/license.txt
}
