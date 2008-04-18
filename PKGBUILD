# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=cyrus-sasl
pkgver=2.1.22
pkgrel=8
pkgdesc="SASL authentication daemon"
arch=(i686 x86_64)
license=('custom')
url="http://asg.web.cmu.edu/cyrus/download/"
depends=('pam' 'heimdal>=1.0.1' 'libldap' 'cyrus-sasl-plugins>=2.1.22-6' 'db>=4.6')
replaces=(cyrus-sasl-mysql cyrus-sasl-pgsql)
conflicts=(cyrus-sasl-mysql cyrus-sasl-pgsql)
backup=(etc/conf.d/saslauthd)
source=(ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/${pkgname}-${pkgver}.tar.gz
	saslauthd saslauthd.conf.d)
md5sums=('45dde9d19193ae9dd388eb68b2027bc9' '697dfb51206c398bc976ce9f4cffe72d'\
         '96d8a2f6189501f8044838e04d5cae7f')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --with-ldap=/usr --with-saslauthd=/var/run/saslauthd
  cd saslauthd
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  make testsaslauthd
  install -m755 testsaslauthd ${startdir}/pkg/usr/sbin || return 1

  mkdir -p ${startdir}/pkg/var/run/saslauthd
  install -D -m755 ${startdir}/src/saslauthd ${startdir}/pkg/etc/rc.d/saslauthd
  install -D -m644 ${startdir}/src/saslauthd.conf.d ${startdir}/pkg/etc/conf.d/saslauthd
  install -D -m644 saslauthd.mdoc ${startdir}/pkg/usr/man/man8/saslauthd.8

  install -v -D -m644 ../COPYING ${startdir}/pkg/usr/share/licenses/cyrus-sasl/COPYING
}
