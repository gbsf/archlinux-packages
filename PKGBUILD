# $Id: PKGBUILD,v 1.7 2007/08/02 19:05:07 juergen Exp $
# Maintainer: Juergen Hoetzel <juergen@archlinux.org>
pkgname=myodbc
pkgver=3.51.17
_suffix=r581
pkgrel=1
pkgdesc="ODBC driver/connector for MySQL"
arch=(i686 x86_64)
url="http://dev.mysql.com/downloads/connector/odbc/"
depends=('unixodbc' 'mysql')
source=(ftp://ftp.orst.edu/pub/mysql/Downloads/MyODBC3/mysql-connector-odbc-${pkgver}${_suffix}.tar.gz)
md5sums=('7e5f5a3aee52d9f03c29b8ccb1e43015')

build() {
  cd $startdir/src/mysql-connector-odbc-${pkgver}${_suffix}
  ./configure --prefix=/usr --sysconfdir=/etc --with-unixODBC=/usr \
    --with-mysql-path=/usr --without-samples --disable-thread-safe \
    --without-x --without-qt --disable-gui --enable-shared \
    --disable-static
  make || return 1
  make DESTDIR=$startdir/pkg install
  #libtoolslay
  find $startdir/pkg -name '*.la' -exec rm {} \;
}
