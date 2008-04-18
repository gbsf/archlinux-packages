# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=xpdf-chinese-simplified
pkgver=20040427
pkgrel=3
pkgdesc="Adds support for simplified Chinese fonts to xpdf"
arch=('i686' 'x86_64')
url="http://www.foolabs.com/xpdf/"
license=('GPL2' 'custom')
depends=('xpdf')
install=$pkgname.install
source=(ftp://ftp.foolabs.com/pub/xpdf/$pkgname.tar.gz LICENSE)
md5sums=('6c3b04008000948e62530b8582e7f37c' '80107f7a1cb3e6c7f2cbd1875a57b430')

build() {
  _xpdfextdir=$startdir/pkg/usr/share/xpdf
  cd $startdir/src/$pkgname
 # copy files to the desired dir, we set /usr/share/xpdf
  mkdir -p $_xpdfextdir
  cp -R * $_xpdfextdir
  rm -f $_xpdfextdir/README $_xpdfextdir/add-to-xpdfrc
 # relocate language specific files
  sed -i 's|/usr/local/share/xpdf/chinese-simplified|/usr/share/xpdf|' add-to-xpdfrc
 # X-Fonts are no longer supported by xpdf
  sed -i 's|^displayCIDFontX.*$||' add-to-xpdfrc
  cat >> add-to-xpdfrc << END_OF_RC_TWEAK
displayCIDFontTT	Adobe-GB1	/usr/share/fonts/TTF/Vera.ttf

END_OF_RC_TWEAK

  install -Dm 644 add-to-xpdfrc $startdir/pkg/etc/xpdf/$pkgname
  install -D -m644 ../LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}
