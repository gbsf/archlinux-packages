# $Id: PKGBUILD,v 1.9 2007/12/27 14:06:38 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=hal-info
_date=20071212
pkgver=0.20071212
pkgrel=1
pkgdesc="Hardware Abstraction Layer information files"
arch=(i686 x86_64)
license=('GPL' 'custom')
url="http://www.freedesktop.org/wiki/Software/hal"
source=(http://hal.freedesktop.org/releases/hal-info-${_date}.tar.gz)
md5sums=('b35ef065c025d337ac91c11ea840aa25')

build() {
  cd ${startdir}/src/${pkgname}-${_date}
  ./configure --prefix=/usr --sysconfdir=/etc || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  mkdir -p ${startdir}/pkg/usr/share/licenses/${pkgname}
  install -m644 COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}
}
