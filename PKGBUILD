# $Id: PKGBUILD,v 1.4 2008/01/05 03:40:18 eric Exp $
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=xpdf-latin2
pkgver=20021022
pkgrel=2
pkgdesc="Adds support for Latin2 fonts to xpdf"
arch=('i686' 'x86_64')
url="http://www.foolabs.com/xpdf/"
license=('GPL2')
depends=('xpdf')
install=$pkgname.install
source=(ftp://ftp.foolabs.com/pub/xpdf/$pkgname.tar.gz)
md5sums=('ac19ef990cd63afd2837c10dc7e1c3ab')

build() {
  _xpdfextdir=$startdir/pkg/usr/share/xpdf
  cd $startdir/src/$pkgname
 # copy files to the desired dir, we set /usr/share/xpdf
  mkdir -p $_xpdfextdir
  cp -R * $_xpdfextdir
  rm -f $_xpdfextdir/README $_xpdfextdir/add-to-xpdfrc
 # relocate language specific files
  sed -i 's|/usr/local/share/xpdf/latin2|/usr/share/xpdf|' add-to-xpdfrc
 # X-Fonts are no longer supported by xpdf
  sed -i 's|^displayCIDFontX.*$||' add-to-xpdfrc
  install -Dm 644 add-to-xpdfrc $startdir/pkg/etc/xpdf/$pkgname
}
