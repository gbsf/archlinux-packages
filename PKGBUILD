# $Id: PKGBUILD,v 1.5 2007/09/08 16:06:54 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=xorg-fonts-75dpi
pkgver=1.0.1
pkgrel=2
pkgdesc="X.org 75dpi fonts"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=(xorg-fonts-encodings xorg-fonts-alias xorg-font-utils fontconfig)
groups=('xorg')
install=xfonts.install
source=(${url}/releases/individual/font/font-adobe-75dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-adobe-utopia-75dpi-1.0.1.tar.bz2
        ${url}/releases/individual/font/font-bh-75dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-bh-lucidatypewriter-75dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-bitstream-75dpi-1.0.0.tar.bz2)
md5sums=('813b5d3723c84388a938ab6732e1329c' 'dd912284e4750023f9682812532fa033'\
         '6e51cd02f4ce32e1393e34ab17a9b211' 'fdd9be5b9db94ef363a33e39b7977e2b'\
         'beb476657d50d07d17eef7c325a5ed08')

build() {
  cd ${startdir}/src
  for dir in font-*-75dpi-1.0.0 font-*-75dpi-1.0.1; do
    pushd ${dir}
      ./configure --prefix=/usr \
                  --with-mapfiles=/usr/share/fonts/util \
		  --with-fontdir=/usr/share/fonts/75dpi
      make || return 1
      make DESTDIR=${startdir}/pkg install || return 1
    popd
  done
  rm -f ${startdir}/pkg/usr/share/fonts/75dpi/fonts.*
}

