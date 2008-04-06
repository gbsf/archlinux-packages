# $Id: PKGBUILD,v 1.13 2008/01/26 04:32:48 kevin Exp $
# Maintainer: Dale Blount <dale@archlinux.org>
# Contributor: Manolis Tzanidakis

pkgname=razor
pkgver=2.84
pkgrel=2
pkgdesc="A distributed, collaborative, spam detection and filtering network."
arch=(i686 x86_64)
url="http://razor.sourceforge.net"
depends=('glibc' 'perl-net-dns' 'perl-digest-sha1' 'perl-uri' 'perl-digest-nilsimsa' 'perl>=5.10.0')
source=(http://dl.sourceforge.net/sourceforge/razor/${pkgname}-agents-${pkgver}.tar.bz2)
options=(!emptydirs)
md5sums=('8b9a11a6ce020383c32c45d1530d77c2')

build() {
  cd ${startdir}/src/${pkgname}-agents-${pkgver}

  # skip install_razor_agents (we'll do the linking later)
  # /bin/sed -i "s|install :: all pure_install doc_install install_razor_agents|install :: all pure_install doc_install|g" Makefile

  /usr/bin/perl Makefile.PL INSTALLDIRS=vendor || return 1
  /usr/bin/make || return 1
  /usr/bin/make DESTDIR=${startdir}/pkg install

  # remove perllocal.pod and .packlist
  /usr/bin/find ${startdir}/pkg -name perllocal.pod -delete
  /usr/bin/find ${startdir}/pkg -name .packlist -delete

  # cd $startdir/pkg/usr/bin
  # for i in razor-check razor-report razor-revoke razor-admin; do 
  #  /bin/ln -sf razor-client $i; 
  # done
}

