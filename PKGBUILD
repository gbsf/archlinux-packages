# $Id: PKGBUILD,v 1.9 2007/07/12 09:42:21 damir Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=anthy
pkgver=9100
jpsourceforge_filecode=26131
pkgrel=1
pkgdesc="Hiragana text to Kana Kanji mixed text Japanese input method"
arch=("i686" "x86_64")
url="http://sourceforge.jp/projects/anthy/"
depends=('glibc')
source=("http://osdn.dl.sourceforge.jp/anthy/${jpsourceforge_filecode}/$pkgname-$pkgver.tar.gz")

build() {
     cd $startdir/src/$pkgname-$pkgver
     ./configure --prefix=/usr --sysconfdir=/etc
     make EMACS=emacs sysconfdir=/etc || return 1
     make EMACS=emacs DESTDIR=$startdir/pkg install || return 1

     find $startdir/pkg -name '*.la' -exec rm {} \;
}


