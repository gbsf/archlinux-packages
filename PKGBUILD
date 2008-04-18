# $Id$
#Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=xorg-fonts-misc
pkgver=1.0.0
pkgrel=3
pkgdesc="X.org misc fonts"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=(xorg-fonts-encodings xorg-fonts-alias xorg-font-utils fontconfig)
install=xfonts.install
source=(${url}/releases/individual/font/font-arabic-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-cursor-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-daewoo-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-dec-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-isas-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-jis-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-micro-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-misc-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-mutt-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-schumacher-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-sony-misc-${pkgver}.tar.bz2
        ${url}/releases/individual/font/font-sun-misc-${pkgver}.tar.bz2)

md5sums=(81595016e2ff859716fc256ebb136ba6 305fa22cdfefb8f80babd711051a534b
         61f9eab48c619af5494d3e384d8d7d79 284e554db1c64fb7580a06df01444a2b
         ec709a96b64b497a5cb5658c93bd38dc 61febb49a71065723a1fba17cbf23c67
         8c8bffd7540f05caa0dbb4e6e1d6c58e 2a57f6188c41d4bc1b88ca3d08ad011d
         648b409b7eb78ad1cd5f6d7fac3eef88 f1c6063d2fadc57e696a0aab69afd6e0
         0dfddd1a946e4497f009094c0ae1bdd5 e17d43a7c6c0d862cfba0908ff132ffa)

build() {
  cd ${startdir}/src
  for dir in font-*-misc-${pkgver}; do
    pushd ${dir}
      ./configure --prefix=/usr \
                  --with-mapfiles=/usr/share/fonts/util \
		  --with-fontdir=/usr/share/fonts/misc
      make || return 1
      make DESTDIR=${startdir}/pkg install || return 1
    popd
    rm -f ${startdir}/pkg/usr/share/fonts/*/fonts.*
  done
}

