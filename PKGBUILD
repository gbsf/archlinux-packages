# $Id: PKGBUILD,v 1.7 2007/10/25 21:01:08 tobias Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=monica
pkgver=3.6
pkgrel=1
pkgdesc="A monitor calibration tool"
arch=(i686 x86_64)
license=('custom')
url="http://www.pcbypaul.com/software/monica.html"
depends=('fltk')
makedepends=('librsvg')
source=(http://www.pcbypaul.com/software/dl/${pkgname}-${pkgver}.tar.bz2 \
        ${pkgname}.desktop ${pkgname}.svg)
md5sums=('30f729468a751b1089e814976319bc34'
         'a337bfda1fca7228420db0ce92256816'
         '4569f5df7d7b3eaf20108adf48e8dfe4')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  make || return 1
  install -Dm755 ${pkgname} ${startdir}/pkg/usr/bin/${pkgname}
  install -Dm644 ../${pkgname}.desktop \
    ${startdir}/pkg/usr/share/applications/${pkgname}.desktop
  install -Dm644 ../${pkgname}.svg \
    ${startdir}/pkg/usr/share/pixmaps/${pkgname}.svg
  rsvg -w 64 -h 57 -f png ${startdir}/pkg/usr/share/pixmaps/${pkgname}.svg \
    ${startdir}/pkg/usr/share/pixmaps/${pkgname}.png
  install -Dm644 LICENCE ${startdir}/pkg/usr/share/licenses/monica/LICENCE
}
