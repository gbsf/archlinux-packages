# $Id: PKGBUILD,v 1.16 2007/10/25 21:01:08 tobias Exp $
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Maintainer: tobias <tobias@archlinux.org>
# Modifications made by: red_over_blue and neri

pkgname=povray
pkgver=3.6.1
_majorver=3.6
pkgrel=4
pkgdesc="A script based raytracer for high-quality three-dimensional graphics"
arch=(i686 x86_64)
license=('custom')
url="http://povray.org"
depends=('gcc' 'zlib' 'libjpeg' 'libtiff' 'libpng' 'libxpm')
backup=('/etc/povray.conf' '/etc/povray.ini')
source=(ftp://ftp.povray.org/pub/povray/Official/Unix/$pkgname-$pkgver.tar.bz2)
md5sums=('b5789bb7eeaed0809c5c82d0efda571d')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --sysconfdir=/etc COMPILED_BY="ArchLinux" \
    --disable-optimiz --enable-strip
  make || return 1
  make DESTDIR=$startdir/pkg sysconfdir=$startdir/pkg/etc install
   # correct the pathes in the ini file
  sed -i "s|/usr/local/share|/usr/share|g" $startdir/pkg/etc/$pkgname/$_majorver/povray.ini
  # install licenses
  install -Dm 644 doc/povlegal.doc \
    ${startdir}/pkg/usr/share/licenses/${pkgname}/LICENSE
  install -Dm 644 doc/distribution-license.txt \
    ${startdir}/pkg/usr/share/licenses/${pkgname}/distribution-license.txt
  install -Dm 644 doc/source-license.txt \
    ${startdir}/pkg/usr/share/licenses/${pkgname}/source-license.txt
}
