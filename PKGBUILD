# $Id: PKGBUILD,v 1.5 2008/01/16 04:32:09 kevin Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Manolis Tzanidakis

pkgname=perl-digest-hmac
_realname=Digest-HMAC
pkgver=1.01
pkgrel=3
pkgdesc="Perl Module: Keyed-Hashing for Message Authentication."
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl-digest-sha1' 'perl>=5.10.0')
options=(!emptydirs)
replaces=('digest-hmac')
provides=('digest-hmac')
source=(http://www.cpan.org/authors/id/G/GA/GAAS/${_realname}-${pkgver}.tar.gz)
md5sums=('32dc54c765100c638b5d7f7ff4c5c626')

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
