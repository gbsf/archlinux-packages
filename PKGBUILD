# $Id$
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=mysql-clients
pkgver=5.0.51
pkgrel=3
pkgdesc="MySQL client tools"
arch=(i686 x86_64)
depends=("libmysqlclient>=${pkgver}" 'gcc-libs' 'readline')
makedepends=('tcp_wrappers' 'libtool' 'gcc')
url=('http://www.mysql.com/')
options=('!libtool')
license=('GPL')
source=(ftp://mirror.services.wisc.edu/mirrors/mysql/Downloads/MySQL-5.0/mysql-${pkgver}a.tar.gz)

build() {
  # PIC
  cd $startdir/src/mysql-${pkgver}a
  libtoolize --force
  ./configure --prefix=/usr --libexecdir=/usr/sbin \
    --localstatedir=/var --sysconfdir=/etc \
    --without-debug --without-docs --without-bench --without-readline \
    --with-innodb --enable-local-infile --with-openssl \
    --with-charset=latin1 --with-collation=latin1_general_ci \
    --with-extra-charsets=complex --enable-thread-safe-client \
    --with-libwrap --with-berkeley-db --disable-server

  for dir in include strings regex mysys dbug extra; do
    pushd ${dir} || return 1
    make || return 1
    popd
  done
  cd client
  sed -i -e 's|\$(top_builddir)/libmysql/libmysqlclient.la|/usr/lib/mysql/libmysqlclient.so|g' Makefile
  make link_sources
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
md5sums=('a83dbdbb91267daf73d2297a9c283dd1')
