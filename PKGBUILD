# $Id: PKGBUILD,v 1.30 2008/03/17 19:02:08 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Ben <ben@benmazer.net>

pkgname=gmime
pkgver=2.2.18
pkgrel=1
pkgdesc="Core mime parsing library"
arch=(i686 x86_64)
license=('GPL')
url="http://spruce.sourceforge.net/gmime/"
depends=('glib2>=2.16.1' 'zlib')
makedepends=('gtk-sharp-2>=2.12.0' 'pkgconfig')
options=('!libtool')
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/2.2/${pkgname}-${pkgver}.tar.bz2)
md5sums=('09461bfb5d8b05e302c1df388b0ed89b')

build() {
  # get rid of that .wapi errors in fakeroot
  export MONO_SHARED_DIR="${startdir}/src/weird"
  mkdir -p "${MONO_SHARED_DIR}"

  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr || return 1
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  # These are gmime alternatives for the same shareutils tools
  mv ${startdir}/pkg/usr/bin/uuencode ${startdir}/pkg/usr/bin/guuencode || return 1
  mv ${startdir}/pkg/usr/bin/uudecode ${startdir}/pkg/usr/bin/guudecode || return 1
}
