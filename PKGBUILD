# $Id: PKGBUILD,v 1.5 2008/01/09 04:04:21 kevin Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Manolis Tzanidakis

pkgname=perl-digest-nilsimsa
_realname=Digest-Nilsimsa
pkgver=0.06
pkgrel=3
pkgdesc="Perl Module: Perl version of Nilsimsa code."
arch=(i686 x86_64)
license=('LGPL')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
options=(!emptydirs)
source=(http://www.cpan.org/authors/id/V/VI/VIPUL/${_realname}-${pkgver}.tar.gz)
replaces=('digest-nilsimsa')
provides=('digest-nilsimsa')
md5sums=('08e940bd7f5d1167ef3fd1aa7ce234d7')

build() {
  cd ${startdir}/src/${_realname}-${pkgver}
  # install module in vendor directories.
  PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
# vim: ts=2 sw=2 et ft=sh
