# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=xpdf-korean
pkgver=20050707
pkgrel=2
pkgdesc="Adds support for Korean fonts to xpdf"
arch=('i686' 'x86_64')
url="http://www.foolabs.com/xpdf/"
license=('GPL2' 'custom')
depends=('xpdf')
install=$pkgname.install
source=(ftp://ftp.foolabs.com/pub/xpdf/$pkgname.tar.gz LICENSE)
md5sums=('3c1e00f3b9d5fa713df8a3d763d12f3a' '80107f7a1cb3e6c7f2cbd1875a57b430')

build() {
  _xpdfextdir=$startdir/pkg/usr/share/xpdf
  cd $startdir/src/$pkgname
 # copy files to the desired dir, we set /usr/share/xpdf
  mkdir -p $_xpdfextdir
  cp -R * $_xpdfextdir
  rm -f $_xpdfextdir/README $_xpdfextdir/add-to-xpdfrc
 # relocate language specific files
  sed -i 's|/usr/local/share/xpdf/korean|/usr/share/xpdf|' add-to-xpdfrc
 # X-Fonts are no longer supported by xpdf
  sed -i 's|^displayCIDFontX.*$||' add-to-xpdfrc
  cat >> add-to-xpdfrc << END_OF_RC_TWEAK
displayCIDFontTT	Adobe-Korea1	/usr/share/fonts/TTF/VeraSe.ttf
displayCIDFontTT	Unidocs-Korea1	/usr/share/fonts/TTF/VeraSe.ttf

END_OF_RC_TWEAK

  install -Dm 644 add-to-xpdfrc $startdir/pkg/etc/xpdf/$pkgname
  install -D -m644 ../LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}
