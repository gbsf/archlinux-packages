# $Id: PKGBUILD,v 1.6 2006/08/19 18:02:43 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: FJ <joostef@gmail.com>
pkgname=libwmf
pkgver=0.2.8.4
pkgrel=4
pkgdesc="A library for reading vector images in Microsoft's native Windows Metafile Format (WMF)."
arch=(i686 x86_64)
url="http://wvware.sourceforge.net/libwmf.html"
license=("LGPL")
depends=('libpng' 'libx11' 'freetype2' 'libjpeg' 'gsfonts' 'expat>=2.0')
makedepends=('gtk2>=2.10.0' 'pkgconfig')
options=(NOLIBTOOL)
install=libwmf.install
source=(http://heanet.dl.sf.net/sourceforge/wvware/${pkgname}-${pkgver}.tar.gz)
md5sums=(d1177739bf1ceb07f57421f0cee191e0)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  sed -i -e 's/src include fonts doc/src include fonts/g' Makefile.in
  ./configure --prefix=/usr \
              --with-gsfontdir=/usr/share/fonts/Type1 \
	      --with-fontdir=/usr/share/fonts/Type1 \
	      --with-gsfontmap=/usr/share/ghostscript/8.15/lib/Fontmap.GS
  make || return 1
  make DESTDIR=${startdir}/pkg install
  #Remove fonts, these are in gsfonts
  rm -rf ${startdir}/pkg/usr/share/fonts
  #Remove static GTK loader, can't use it anyways
  rm -f ${startdir}/pkg/usr/lib/gtk-2.0/*/loaders/*.a
}
