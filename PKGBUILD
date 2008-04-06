# $Id: PKGBUILD,v 1.21 2007/12/17 05:54:28 eric Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>

pkgname=texmacs
ownname=TeXmacs
pkgver=1.0.6.12
pkgrel=1
pkgdesc="GNU TeXmacs is a free scientific text editor, which was both inspired by TeX and GNU Emacs. WYSIWYG editor TeX-fonts and CAS-interface (Giac, GTybalt, Macaulay 2, Maxima, Octave, Pari, Qcl, R and Yacas) in one."
arch=("i686" "x86_64")
url="http://www.texmacs.org/"
license=('GPL')
depends=('gcc-libs>=4.1' 'libtool' 'guile>=1.8.1' 'tetex' 'python' 'libxext' 'freetype2')
# do not remove tetex-dependency, as it is needed!
source=("ftp://ftp.texmacs.org/pub/TeXmacs/targz/TeXmacs-${pkgver}-src.tar.gz")
md5sums=('5cdd9ea143657e8801d50b9dcc97c510')

build() {
  cd ${startdir}/src/TeXmacs-${pkgver}-src
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=${startdir}/pkg install
}

