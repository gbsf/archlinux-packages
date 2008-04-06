# $Id: PKGBUILD,v 1.14 2008/03/14 21:58:02 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=libggz
pkgver=0.0.14.1
pkgrel=1
pkgdesc="GGZ base library, used by the GGZ Gaming Zone server (ggzd), the ggzcore library and other components"
arch=(i686 x86_64)
url="http://www.ggzgamingzone.org/"
license=('LGPL')
depends=('libgcrypt')
options=('!libtool')
source=(http://ftp.ggzgamingzone.org/pub/ggz/${pkgver}/${pkgname}-${pkgver}.tar.gz)
md5sums=('603739504648833779aa13b0327a1c3d')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
}
