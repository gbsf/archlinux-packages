# $Id: PKGBUILD,v 1.24 2008/03/28 10:19:55 pierre Exp $
# Maintainer:  tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=courier-authlib
pkgver=0.60.2
pkgrel=4
pkgdesc="Authentification library for the courier mailserver(s)"
arch=(i686 x86_64)
license=('GPL2')
url="http://courier-mta.org/authlib/"
backup=('etc/authlib/authdaemonrc' 'etc/authlib/authldaprc' \
        'etc/authlib/authmysqlrc' 'etc/authlib/authpgsqlrc')
depends=('openssl' 'db>=4.6' 'perl' 'libtool')
makedepends=('pam' 'expect' 'libldap' 'libmysqlclient' 'postgresql-libs>=8.3.0')
conflicts=('courier-imap-mysql' 'courier-imap-pgsql' 'courier-imap-ldap')
provides=('courier-imap-mysql' 'courier-imap-pgsql' 'courier-imap-ldap')
install=${pkgname}.install
source=(http://dl.sourceforge.net/sourceforge/courier/${pkgname}-${pkgver}.tar.bz2 \
        authdaemond.rc.d)
md5sums=('dd972318b77efd0d04dbcb4a6b140bbe'
         '911ee9f40d70fafc6bb4cc636c5ad531')

build() {
  export MAKEFLAGS="-j1"
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr \
    --sysconfdir=/etc \
    --localstatedir=/var \
    --libdir=/usr/lib \
    --libexecdir=/usr/lib \
    --with-db=db \
    --with-mailuser=courier --with-mailgroup=courier \
    --with-authpam --with-authpwd --with-authshadow \
    --with-authldap --with-authmysql --with-authpgsql \
    --with-authuserdb --with-authcram --with-authdaemon
  make || return 1
  make DESTDIR=${startdir}/pkg install
 ###############################################################################
 # post_installation ---- rename the config file and change ownerschip
  for distfile in ${startdir}/pkg/etc/authlib/*.dist; do
    chown 72:72 ${distfile}
    mv ${distfile} ${startdir}/pkg/etc/authlib/`basename ${distfile} .dist`
  done
   # copy the .schema; mostly refered to as courier.schema -> rename it
  install -Dm 444 authldap.schema \
    ${startdir}/pkg/etc/openldap/schema/courier.schema
 ###############################################################################
 # Install daemon, that wraps couriers bashscript
  install -Dm 755 ../authdaemond.rc.d ${startdir}/pkg/etc/rc.d/authdaemond
  chown -R 72:72 ${startdir}/pkg/var/spool/authdaemon
  mkdir ${startdir}/pkg/var/spool/courier
  chown -R 72:72 ${startdir}/pkg/var/spool/courier
  # docs say we can remove .a files after make
  find ${startdir}/pkg -name '*\.a' -exec rm -f {} \;
}
