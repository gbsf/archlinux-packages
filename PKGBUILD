# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=xpdf-japanese
pkgver=20040727
pkgrel=3
pkgdesc="Adds support for Japanese fonts to xpdf"
arch=('i686' 'x86_64')
url="http://www.foolabs.com/xpdf/"
license=('GPL2' 'custom')
depends=('xpdf')
install=$pkgname.install
source=(ftp://ftp.foolabs.com/pub/xpdf/$pkgname.tar.gz LICENSE)
md5sums=('a11ee6476d0f381983664fc614f7a95e' '80107f7a1cb3e6c7f2cbd1875a57b430')

build() {
  _xpdfextdir=$startdir/pkg/usr/share/xpdf
  cd $startdir/src/$pkgname
 # copy files to the desired dir, we set /usr/share/xpdf
  mkdir -p $_xpdfextdir
  cp -R * $_xpdfextdir
  rm -f $_xpdfextdir/README $_xpdfextdir/add-to-xpdfrc
 # relocate language specific files
  sed -i 's|/usr/local/share/xpdf/japanese|/usr/share/xpdf|' add-to-xpdfrc
 # X-Fonts are no longer supported by xpdf
  sed -i 's|^displayCIDFontX.*$||' add-to-xpdfrc
  cat >> add-to-xpdfrc << END_OF_RC_TWEAK
displayCIDFontTT	Adobe-Japan1	/usr/share/fonts/TTF/Vera.ttf
displayCIDFontTT	GothicBBB-Medium-H	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	GothicBBB-Medium-Identity-H	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	HeiseiKakuGo-W5	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	HeiseiKakuGo-W9	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	ShinGo-Bold	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	FutoGoB101-Bold	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	GothicBBB-Meidum	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	MS-Gothic	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	Kochi-Gothic	/usr/share/fonts/TTF/VeraSe.ttf

END_OF_RC_TWEAK

  install -Dm 644 add-to-xpdfrc $startdir/pkg/etc/xpdf/$pkgname
  install -D -m644 ../LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}
