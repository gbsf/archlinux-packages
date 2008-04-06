# $Id: PKGBUILD,v 1.5 2008/02/03 12:41:37 damir Exp $
# Maintainer : Damir Perisa <damir.perisa@bluewin.ch>
# font is PD, unfortunately nowhere on the net available directly atm, so we use debian as source
# deb: Paul Wise <pabs3 AT bonedaddy.net>  
# author: Mark Williamson <node DOT ue AT gmail.com>

pkgname=ttf-mph-2b-damase
pkgver=001.000.4.dfsg.2
origver=001.000.dfsg.2
pkgrel=1
pkgdesc="Super-Unicode TTFont covering full Plane 1, and the following scripts: Armenian, Buginese, Cherokee, Cypriot Syllabary, Cyrillic, Deseret, Georgian, Asomtavruli, Nuskhuri but no Mkhedruli, Glagolitic, Gothic, Greek, Hanunoo, Hebrew, Latin, Limbu, Linear B, Old Italic, Old Persian cuneiform, Osmanya, Shavian, Syloti Nagri, Tai Le, Thaana, Tifinagh, Ugaritic, Vietnamese"
arch=(i686 x86_64)
license=('PD')
url="http://packages.debian.org/unstable/x11/ttf-mph-2b-damase" 
depends=(xorg-fonts-encodings xorg-fonts-alias xorg-font-utils fontconfig)
install=ttf.install
source=("http://ftp.debian.org/debian/pool/main/t/ttf-mph-2b-damase/ttf-mph-2b-damase_${origver}.orig.tar.gz")


build() {
  cd ${startdir}/src/ttf-mph-2b-damase-$origver
  mkdir -p  ${startdir}/pkg/usr/share/fonts/TTF
  install -m644 *.ttf ${startdir}/pkg/usr/share/fonts/TTF/
}
md5sums=('a3182b21abe68046039471cabe0af66d')
