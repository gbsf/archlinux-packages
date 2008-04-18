# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=audiofile
pkgver=0.2.6
pkgrel=3
pkgdesc="Silicon Graphics Audio File Library"
url="http://www.68k.org/~michael/audiofile/"
depends=(glibc)
source=(http://www.68k.org/~michael/audiofile/audiofile-$pkgver.tar.gz
	aclocal-fixes.patch)
md5sums=(9c1049876cd51c0f1b12c2886cce4d42 a4c04c757d6b0a049c6fce6b64e9a17b)

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np0 -i ${startdir}/src/aclocal-fixes.patch || return 1
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
