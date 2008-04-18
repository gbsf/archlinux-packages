# $Id$
# Maintainer: Judd Vinet <jvinet@zeroflux.org>
pkgname=graveman
pkgver=0.3.12.5
_realver=0.3.12-5
pkgrel=4
pkgdesc="A CD-burning frontend for mkisofs, cdrecord and friends"
arch=(i686 x86_64)
license=('GPL')
url="http://graveman.tuxfamily.org"
depends=('libvorbis' 'libid3tag' 'libglade' 'libmad' 'cdrdao' 'cdrkit'
	 'sox>=13.0.0' 'dvd+rw-tools' 'flac>=1.2.0' 'libmng')
makedepends=('perlxml')
source=(http://graveman.tuxfamily.org/sources/graveman-${_realver}.tar.bz2
	combo_writer.patch
	sox.patch)
md5sums=('c9c80782282c6699effa91d1a806723b'
         'd2b5defe6a32c2137a1df34654e35d20'
         'c80456110e178e9c29aa1f1875e28539')

build() {
  cd ${startdir}/src/${pkgname}-${_realver}
  patch -Np0 -i ${startdir}/src/sox.patch || return 1
  patch -Np0 -i ${startdir}/src/combo_writer.patch || return 1
  ./configure --prefix=/usr --sysconfdir=/etc
  make || return 1
  mkdir -p ${startdir}/pkg/usr/man/man1
  make DESTDIR=${startdir}/pkg install
}
