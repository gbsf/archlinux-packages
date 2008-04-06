# $Id: PKGBUILD,v 1.14 2007/08/26 12:51:29 thomas Exp $
# Contributor: Jason Chu <jason@archlinux.org>
# Maintainer: Juergen Hoetzel <juergen@archlinux.org>
pkgname=uml_utilities
pkgver=20070815
pkgrel=1
pkgdesc="User Mode Linux Utilities"
arch=(i686 x86_64)
depends=('fuse' 'readline')
url="http://user-mode-linux.sourceforge.net/"
source=(http://user-mode-linux.sourceforge.net/${pkgname}_${pkgver}.tar.bz2)
md5sums=('b0468ac8b79cef53f36f5f9517907462')

build() {
  cd $startdir/src/tools-$pkgver
  sed 's|lib64|lib|g' -i Makefile
  make all|| return 1
  make DESTDIR=$startdir/pkg install || return 1
  chown root $startdir/pkg/usr/bin/*
}
