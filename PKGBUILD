# $Id: PKGBUILD,v 1.18 2008/01/28 06:02:02 eric Exp $
# Maintainer: Damir Perisa <damir@archlinux.org>

pkgname=glabels
pkgver=2.2.1
pkgrel=1
pkgdesc="Creating labels and business cards the very easy way"
arch=('i686' 'x86_64')
license=('GPL' 'LGPL')
url="http://snaught.com/glabels/"
depends=('libgnomeui' 'scrollkeeper' 'desktop-file-utils')
makedepends=('pkgconfig' 'perlxml')
options=('!libtool')
install=glabels.install
source=(http://puzzle.dl.sourceforge.net/sourceforge/${pkgname}/${pkgname}-${pkgver}.tar.gz)

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  find . -name Makefile.in -exec sed -i -e 's/-scrollkeeper-update.*//' {} \;
  if [ -f omf.make ]; then
    sed -i -e 's/-scrollkeeper-update.*//' omf.make
  fi
  ./configure --prefix=/usr --sysconfdir=/etc \
              --localstatedir=/var --disable-static \
              --disable-update-mimedb --disable-update-desktopdb 
  make || return 1
  make DESTDIR=${startdir}/pkg install
}

md5sums=('0828bd732ba4c541616ca121407723f2')
