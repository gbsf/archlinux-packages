# $Id$
# Maintainer: Corrado 'bardo' Primier <corrado.primier@mail.polimi.it>
# Contributor: pressh <pressh at gmail dot com>

pkgname=libsexymm
pkgver=0.1.9
pkgrel=1
pkgdesc="C++ bindings for libsexy"
arch=('i686' 'x86_64')
url="http://osiris.chipx86.com/projects/libsexy"
license=('GPL')
depends=('gtkmm' 'libsexy')
makedepends=('pkgconfig')
options=('!libtool')
source=(http://releases.chipx86.com/libsexy/libsexymm/${pkgname}-${pkgver}.tar.gz)
md5sums=('77c8ae69084e478a6b090ec6e5ae26bf')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
    ./configure --prefix=/usr
    make || return 1
    make DESTDIR=${startdir}/pkg install
}
