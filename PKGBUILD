# $Id: PKGBUILD,v 1.1 2008/03/30 13:56:23 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=gstreamer0.10-ugly-plugins
pkgver=0.10.7
pkgrel=1
pkgdesc="GStreamer Multimedia Framework Ugly Plugins (gst-plugins-ugly)"
arch=(i686 x86_64)
license=('LGPL')
depends=("gstreamer0.10-ugly>=${pkgver}" 'libdvdread' 'lame' 'libmpeg2' 'a52dec' 'libid3tag' 'libmad' 'libsidplay')
makedepends=('pkgconfig')
replaces=('gstreamer0.10-dvdread' 'gstreamer0.10-mpeg2dec' 'gstreamer0.10-mad' 'gstreamer0.10-lame' 'gstreamer0.10-sidplay' 'gstreamer0.10-a52dec')
conflicts=('gstreamer0.10-dvdread' 'gstreamer0.10-mpeg2dec' 'gstreamer0.10-mad' 'gstreamer0.10-lame' 'gstreamer0.10-sidplay' 'gstreamer0.10-a52dec')
provides=("gstreamer0.10-dvdread=${pkgver}" "gstreamer0.10-mpeg2dec=${pkgver}" "gstreamer0.10-mad=${pkgver}" "gstreamer0.10-lame=${pkgver}" "gstreamer0.10-sidplay=${pkgver}" "gstreamer0.10-a52dec=${pkgver}" "gst-plugins-ugly=${pkgver}")
url="http://gstreamer.freedesktop.org/"
groups=('gstreamer0.10-plugins')
_relname=gst-plugins-ugly
options=(!libtool)
source=(${url}/src/${_relname}/${_relname}-${pkgver}.tar.bz2)
md5sums=('cff4f55138d12152cf580a3ee71c2519')

build() {
  cd ${startdir}/src/${_relname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
    --disable-static --enable-experimental \
    --disable-docs-build --disable-plugin-docs \
    --with-package-name="GStreamer Ugly Plugins (Archlinux)" \
    --with-package-origin="http://www.archlinux.org/" || return 1

  make || return 1
  make -C ext DESTDIR=${startdir}/pkg install || return 1
}
