# $Id: PKGBUILD,v 1.24 2007/09/30 11:28:28 tpowa Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

force=y
pkgname=libgda
pkgver=1.2.4
pkgrel=2
pkgdesc="data abstraction layer; with mysql, pgsql, ldap, xml, sqlite providers"
arch=(i686 x86_64)
depends=('glib2>=2.12.3' 'libxslt' 'popt' 'scrollkeeper' 'db>=4.6'
         'libmysqlclient' 'postgresql-libs>=8.2.3' 'libldap' 'unixodbc' 'sqlite3')
makedepends=('intltool' 'pkgconfig')
options=('nolibtool')
url="http://www.gnome-db.org"
install=libgda.install
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/1.2/${pkgname}-${pkgver}.tar.bz2)
md5sums=('512a8ed842ce98eb432e69bd6867f437')

build() {
  export MAKEFLAGS="-j1"
  cd ${startdir}/src/${pkgname}-${pkgver}
  find . -name Makefile.in -exec sed -i -e 's/-scrollkeeper-update.*//' {} \;
  if [ -f omf.make ]; then
    sed -i -e 's/-scrollkeeper-update.*//' omf.make
  fi

  ./configure --prefix=/usr --sysconfdir=/etc
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
