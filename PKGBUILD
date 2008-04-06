# $Id: PKGBUILD,v 1.38 2007/06/09 21:26:48 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
pkgname=koffice
pkgver=1.6.3
stable=stable # stable|unstable
pkgrel=2
pkgdesc="An integrated Office suite for KDE"
license=('GPL' 'LGPL')
arch=(i686 x86_64)
url="http://www.koffice.org"
depends=('kdelibs>=3.5.5' 'aspell' 'wv2' 'imagemagick>=6.3.0.7' 'python>=2.5' 'libwpd' \
         'libxslt' 'libexif' 'libgl' 'openexr>=1.4.0a')
makedepends=('pkgconfig' 'libpqxx>=2.6.8' 'libmysqlclient' 'ruby')

source=(http://download.kde.org/stable/koffice-${pkgver}/src/koffice-${pkgver}.tar.bz2)

build() {
  # Source the QT and KDE profile
  [ "$QTDIR" = "" ] && source /etc/profile.d/qt.sh
  [ "$KDEDIR" = "" ] && source /etc/profile.d/kde.sh

  cd ${startdir}/src/${pkgname}-${pkgver}

  #make -f Makefile.cvs
  ./configure --prefix=/opt/kde --enable-new-ldflags --disable-debug \
              --disable-doc

  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  rm -rf ${startdir}/pkg/opt/kde/share/doc
}
md5sums=('386d388094734f9759977c3267098e30')
