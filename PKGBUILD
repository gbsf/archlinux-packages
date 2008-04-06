# $Id: PKGBUILD,v 1.5 2007/11/01 01:08:48 damir Exp $
# Maintainer : Damir Perisa <damir.perisa@bluewin.ch>

pkgname=ttf-khmer
pkgver=5.0
pkgrel=1
pkgdesc="TTFont collection for Khmer (Cambodia)"
arch=("i686" "x86_64")
url="http://www.khmeros.info/drupal/?q=en/download/fonts"
depends=("xorg-fonts-encodings" "xorg-fonts-alias" "xorg-font-utils" "fontconfig")
install=ttf.install
license=('LGPL')
source=("http://heanet.dl.sourceforge.net/sourceforge/khmer/All_KhmerOS_${pkgver}.zip")

build() {
  cd ${startdir}/src/All_KhmerOS_${pkgver}
  mkdir -p ${startdir}/pkg/usr/share/fonts/TTF
  install -m644 *.ttf ${startdir}/pkg/usr/share/fonts/TTF/
}
md5sums=('dc1ddeb526ccbc06603da880d1e89e7b')
