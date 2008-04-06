# $Id: PKGBUILD,v 1.8 2007/09/28 23:28:49 andyrtr Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=cyrus-sasl-plugins
pkgver=2.1.22
pkgrel=6
pkgdesc="Cyrus Simple Authentication Service Layer (SASL) library"
arch=('i686' 'x86_64')
url="http://asg.web.cmu.edu/cyrus/download/"
license=('custom')
depends=('postgresql-libs>=8.2.4' 'heimdal>=1.0.1' 'libldap' 'libmysqlclient')
source=(ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/cyrus-sasl-${pkgver}.tar.gz)
md5sums=('45dde9d19193ae9dd388eb68b2027bc9')

build() {
  cd ${startdir}/src/cyrus-sasl-${pkgver}
#	unset CFLAGS
	./configure --prefix=/usr \
  	--sysconfdir=/etc \
  	--localstatedir=/var \
	--disable-login \
	--disable-plain \
	--enable-sql \
	--disable-sqlite \
	--enable-gssapi=/usr/include/gssapi \
	--with-mysql=/usr \
	--with-pgsql=/usr \
	--enable-postgresql \
	--enable-ldapdb \
	--with-ldap=/usr
  cd sasldb
  make
  cd ../plugins
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  install -D -m644 ../COPYING ${startdir}/pkg/usr/share/licenses/${pkgname}/COPYING

  rm -f ${startdir}/pkg/usr/lib/sasl2/libsasldb.*
}
