# $Id: PKGBUILD,v 1.8 2006/06/22 14:04:52 arjan Exp $
# Maintainer: Dale Blount <dale@archlinux.org>
# Original Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Portions from AUR john-devel PKGBUILD used with permission from Michal Krenek <mikos@sg1.cz>

pkgname=john
pkgver=1.7.0.2
pkgrel=3
pkgdesc="John the Ripper is a fast password cracker. Additional patches (NTLM, MySQL, Kerberos V5, etc.) included."
url="http://www.openwall.com/$pkgname/"
depends=('openssl')
source=(http://www.openwall.com/$pkgname/f/$pkgname-$pkgver.tar.gz \
	http://www.openwall.com/john/contrib/john-1.7-all-4.diff.gz \
	http://www2.psy.uq.edu.au/~ftp/Crypto/DES/libdes-4.04b.tar.gz \
	params.h.patch)

build() {
	# jumbo patch
	cd ${startdir}/src/$pkgname-$pkgver
	patch -p0 < ${startdir}/src/$pkgname-1.7-all-4.diff || return 1
	cd ${startdir}/src/john-$pkgver/src/

	# patch default params
	patch -p0 < ${startdir}/src/params.h.patch
	sed -i 's|CFLAGS = -c -Wall -O2|CFLAGS = -c -Wall -O2 -march=i686 -DJOHN_SYSTEMWIDE=1|' Makefile
	sed -i 's|LIBS = -ldes|LIBS = -ldes -Ldes|' Makefile
	sed -i 's|#include <des.h>|#include "des/des.h"|' KRB5_fmt.c
	sed -i 's|#include <des.h>|#include "des/des.h"|' KRB5_std.h

	# build john
	make linux-x86-mmx || return 1

	# config file
	mkdir -p ${startdir}/pkg/etc/john
	sed -i 's|$JOHN|/usr/share/john|g' ${startdir}/src/john-$pkgver/run/john.conf
	install -m644 ${startdir}/src/john-$pkgver/run/john.conf ${startdir}/pkg/etc/john/john.conf
	
	# docs
	mkdir -p ${startdir}/pkg/usr/share/john/doc
	install -m644 ${startdir}/src/john-$pkgver/doc/* ${startdir}/pkg/usr/share/john/doc/
	install -m644 ${startdir}/src/john-$pkgver/run/*.chr ${startdir}/pkg/usr/share/john/	
	install -m644 ${startdir}/src/john-$pkgver/run/password.lst ${startdir}/pkg/usr/share/john/	

	# install binaries
	mkdir -p ${startdir}/pkg/usr/bin
	make linux-x86-mmx || return 1
	install -m755 ${startdir}/src/john-$pkgver/run/john ${startdir}/pkg/usr/bin/john
	install -m755 ${startdir}/src/john-$pkgver/run/mailer ${startdir}/pkg/usr/bin/john-mailer
	cd ${startdir}/pkg/usr/bin
	ln -s john unafs
	ln -s john unique
	ln -s john unshadow
	ln -s john undrop
}
