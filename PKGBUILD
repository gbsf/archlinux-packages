# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Jochem Kossen <j.kossen@home.nl>

pkgname=xsnow
pkgver=1.42
pkgrel=4
pkgdesc="xsnow will let it snow on the root window and on windows. Santa and his reindeer will complete your festive-season feeling."
arch=('i686' 'x86_64')
url="http://dropmix.xs4all.nl/rick/Xsnow/"
license=('custom')
depends=('glibc' 'libxpm')
makedepends=('imake')
source=(http://dropmix.xs4all.nl/rick/Xsnow/${pkgname}-${pkgver}.tar.gz LICENSE)
md5sums=('451d8fc0a2b5393b428faa496a556036' '60d377d8f9c0e99297160a464d4a0a9e')
sha1sums=('d63987560dac9c6341e50d270089e40d17031ce3'
          'c93e236bed35a2d5dc23202c1c615d4e146fba49')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  xmkmf
  make depend
  make || return 1
  make DESTDIR=${startdir}/pkg MANPATH=/usr/share/man install install.man
  chmod 644 ${startdir}/pkg/usr/share/man/man1/xsnow.1x
  install -D -m644 ../LICENSE ${startdir}/pkg/usr/share/licenses/${pkgname}/LICENSE
}
