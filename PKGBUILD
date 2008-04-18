# $Id$
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=xorg-fonts-100dpi
pkgver=1.0.1
pkgrel=1
pkgdesc="X.org 100dpi fonts"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=('xorg-fonts-encodings' 'xorg-fonts-alias' 'xorg-font-utils' 'fontconfig')
groups=('xorg')
install=xfonts.install
source=(${url}/releases/individual/font/font-adobe-100dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-adobe-utopia-100dpi-1.0.1.tar.bz2
        ${url}/releases/individual/font/font-bh-100dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-bh-lucidatypewriter-100dpi-1.0.0.tar.bz2
        ${url}/releases/individual/font/font-bitstream-100dpi-1.0.0.tar.bz2)
md5sums=('443acfe70e26716282f9068730fe92c4' '5d28a30efef966f8dbbaff9a6619f01a'\
         'e5592de74a5c04e3a2608800dd079197' 'c44d3f730564da465993e9292a33c235'\
         '173352ddec3d26e2b91df1edcf1ae85b')

build() {
  cd ${startdir}/src
  for dir in font-*-100dpi-1.0.0 font-*-100dpi-1.0.1; do
    pushd ${dir}
      ./configure --prefix=/usr \
                  --with-mapfiles=/usr/share/fonts/util \
		  --with-fontdir=/usr/share/fonts/100dpi
      make || return 1
      make DESTDIR=${startdir}/pkg install || return 1
    popd
  done
  rm -f ${startdir}/pkg/usr/share/fonts/100dpi/fonts.*
}

