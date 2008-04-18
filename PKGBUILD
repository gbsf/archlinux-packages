# $Id$
# Maintainer: 
# Contributor: Jochem Kossen <j.kossen@home.nl>
pkgname=id3lib
pkgver=3.8.3
pkgrel=9
pkgdesc="An open-source, cross-platform software development library for reading, writing, and manipulating ID3v1 and ID3v2 tags"
arch=(i686 x86_64)
license=('LGPL')
url="http://id3lib.sourceforge.net/"
depends=('zlib' 'gcc-libs')
options=('!libtool')
source=(http://downloads.sourceforge.net/sourceforge/${pkgname}/${pkgname}-${pkgver}.tar.gz
	patch_id3lib_3.8.3_UTF16_writing_bug.diff
	id3lib-3.8.3-CVE-2007-4460.patch)
md5sums=('19f27ddd2dda4b2d26a559a4f0f402a7'
         '196c65adee1ba511ddacef2de0dfd102'
         '78e90e15ddd1122b66da352b6c3b00ff')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np1 -i ${startdir}/src/patch_id3lib_3.8.3_UTF16_writing_bug.diff || return 1
  patch -Np0 -i ${startdir}/src/id3lib-3.8.3-CVE-2007-4460.patch || return 1
  ./configure --prefix=/usr
  sed -i -e 's/^LIBS =/LIBS = -lz -lstdc++/' src/Makefile
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
