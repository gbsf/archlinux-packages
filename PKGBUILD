# $Id: PKGBUILD,v 1.45 2007/10/28 20:44:41 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Link Dupont <link@subpop.net>

pkgname=hal
pkgver=0.5.10
pkgrel=1
pkgdesc="Hardware Abstraction Layer"
arch=(i686 x86_64)
license=('GPL' 'custom')
url="http://www.freedesktop.org/wiki/Software/hal"
depends=('dbus-glib>=0.74' 'libusb' 'udev>=111' 'filesystem>=0.7.1-5' 'hal-info>=0.20071011' 'eject' 'libsmbios>=0.13.6' 'dmidecode' 'pciutils>=2.2.8-2' 'usbutils>=0.73-3' 'pm-utils')
makedepends=('pkgconfig' 'gperf')
options=('!libtool')
install=hal.install
source=(http://hal.freedesktop.org/releases/${pkgname}-${pkgver}.tar.gz
	hal
	hal-policy.patch
	cryptsetup_location.patch
	hal-0.5.9-hide-diagnostic.patch
	ntfs3g-valid-options.patch)
md5sums=('fce852c428e7cda0b937087c79eec63f'
         '882f67668cb14a0a9e4a27ef22278027'
         '5ba8b610aa9763a5f42b9f7cbd7a86ad'
         'c688a3c6574699365926f4fef7441545'
         '4d4b6801a1cedca22b8bdd9db73b16fb'
         '4242a2c78885e396f639d0cd5e33218c')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ${startdir}/src/hal-policy.patch || return 1
  patch -Np1 -i ${startdir}/src/cryptsetup_location.patch || return 1
  patch -Np1 -i ${startdir}/src/hal-0.5.9-hide-diagnostic.patch || return 1
  patch -Np0 -i ${startdir}/src/ntfs3g-valid-options.patch || return 1

  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
              --libexecdir=/usr/lib/hal --enable-static=no \
	      --enable-acpi-ibm --enable-acpi-toshiba \
              --disable-docbook-docs --disable-doxygen-docs \
	      --with-hal-user=hal --with-hal-group=hal \
	      --with-pid-file=/var/run/hald.pid \
	      --enable-policy-kit=no || return 1
  sed -e 's/device-manager//' -i tools/Makefile || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  mkdir -p ${startdir}/pkg/etc/rc.d
  mkdir -p ${startdir}/pkg/media
  install -m 755 ${startdir}/src/hal ${startdir}/pkg/etc/rc.d/hal || return 1

  mkdir -p ${startdir}/pkg/usr/share/licenses/${pkgname}
  install -m644 COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}
}
