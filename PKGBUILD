# $Id: PKGBUILD,v 1.3 2007/09/12 20:28:22 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Alessio 'mOLOk' Bolognino <themolok@gmail.com>
# Contributor: daniel g. siegel <dgsiegel@gmail.com> 

pkgname=libsmbios
pkgver=0.13.10
pkgrel=1
pkgdesc="A library for providing access to as much BIOS information as possible"
arch=(i686 x86_64)
url="http://linux.dell.com/libsmbios/main/index.html"
license=('GPL' 'custom')
depends=('gcc' 'libxml2')
source=(http://linux.dell.com/libsmbios/download/${pkgname}/${pkgname}-${pkgver}/${pkgname}-${pkgver}.tar.gz)
options=('!libtool')
md5sums=('23faf207803e7249be7662697f8218a9')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --disable-static

  make || exit 1
  make DESTDIR=${startdir}/pkg/ install 

  mkdir -p ${startdir}/pkg/usr/include

  cp -a include/smbios ${startdir}/pkg/usr/include/smbios
  find ${startdir}/pkg/usr/include/smbios -type d -exec chmod 0755 {} \;
  find ${startdir}/pkg/usr/include/smbios -type f -exec chmod 0644 {} \;
  rm -f ${startdir}/pkg/usr/include/smbios/version.h.in

  install -D -m644 COPYING-OSL ${startdir}/pkg/usr/share/licenses/libsmbios/COPYING
}
