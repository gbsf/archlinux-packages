# $Id: PKGBUILD,v 1.28 2008/04/03 23:42:27 tobias Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=inkscape
pkgver=0.46
pkgrel=2
pkgdesc="A vector-based drawing program - svg compliant"
url="http://inkscape.sourceforge.net/"
arch=(i686 x86_64)
license=('GPL' 'LGPL')
depends=('gtkmm>=2.12.3' 'gc>=7.0' 'desktop-file-utils' 'libxslt>=1.1.22' \
         'perl' 'pyxml' 'openssl>=0.9.8d' 'lcms' 'gtkspell' 'poppler-glib' \
         'imagemagick' 'popt')
makedepends=('perlxml' 'pkgconfig' 'boost')
options=('!libtool')
install=inkscape.install
source=("http://dl.sourceforge.net/sourceforge/${pkgname}/${pkgname}-${pkgver}.tar.gz"
        perl-5.10.patch)
md5sums=('3bae9034047379012127e52f9b138d32')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ../perl-5.10.patch || return 1
  ./configure --prefix=/usr \
    --enable-inkboard \
    --enable-lcms \
    --with-gnome-print \
    --with-xft \
    --with-python \
    --with-perl \
    --without-gnome-vfs
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
md5sums=('3bae9034047379012127e52f9b138d32'
         'da1009efea12f6512e69cc3ec8604f4f')
