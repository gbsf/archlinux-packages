# $Id: PKGBUILD,v 1.44 2007/10/26 16:34:58 andyrtr Exp $
# Contributor: Jeff Brodnax <tullyarcher@bellsouth.net>
# Maintainer: Dale Blount <dale@archlinux.org>
pkgname=postfix
pkgver=2.4.6
pkgrel=1
pkgdesc="Secure, fast, easy to administer drop in replacement for Sendmail (MTA)"
arch=(i686 x86_64)
license=('custom')
depends=('pcre' 'libsasl' 'libmysqlclient' 'postgresql-libs>=8.2.3' 'libldap')
backup=(etc/postfix/aliases etc/postfix/virtual etc/postfix/relocated \
	etc/postfix/access etc/postfix/header_checks etc/postfix/transport \
	etc/postfix/generic etc/postfix/canonical \
	etc/postfix/main.cf etc/postfix/master.cf)
install="$pkgname.install"
provides=('smtp-server')
replaces=('postfix-mysql' 'postfix-pgsql')
conflicts=('postfix-mysql' 'postfix-pgsql' 'smtp-server')
url="http://www.postfix.org/"
source=(ftp://ftp.porcupine.org/mirrors/postfix-release/official/$pkgname-$pkgver.tar.gz \
        $pkgname.patch.bz2 \
	$pkgname \
	$pkgname.install)
md5sums=('303327f66c13ff9631734651ee184a88'
         'a3c45ff23ef036143711793fcf2478c3'
         '35f0bc4d5a318d27fda3f79551a0e923'
         '469ce1ce887bafb2afd243c4c64c843a')

build() {
	cd $startdir/src/$pkgname-$pkgver
	
	make makefiles \
	        CCARGS="-DUSE_SASL_AUTH -I/usr/include/sasl \
			-DUSE_CYRUS_SASL \
			-DHAS_LDAP \
			-DUSE_TLS \
			-DHAS_MYSQL -I/usr/include/mysql \
			-DHAS_PGSQL -I/usr/include/postgresql" \
	        AUXLIBS="-lsasl2 -lssl -lcrypto -lldap -llber -lmysqlclient -lz -lm -lpq"
	make OPT="${CFLAGS}" || return 1

	sh postfix-install -non-interactive \
		install_root="$startdir/pkg" \
		daemon_directory="/usr/lib/$pkgname" \
		sample_directory="/etc/$pkgname/sample" \
		manpage_directory="/usr/man"

	cd $startdir/pkg
	cat $startdir/src/$pkgname.patch |patch -Np0 || return 1
	rm etc/$pkgname/main.cf~

	cd $startdir/pkg
	mkdir etc/rc.d
	install -m 0755 $startdir/src/$pkgname etc/rc.d/$pkgname

	install -Dm644 $startdir/src/$pkgname-$pkgver/LICENSE ${startdir}/pkg/usr/share/licenses/${pkgname}/LICENSE
}
