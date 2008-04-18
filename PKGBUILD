# $Id$
# Maintainer: Kevin Piche <kevin@archlinux.org>
# Contributor: Manolis Tzanidakis

pkgname=perl-timedate
_realname=TimeDate
pkgver=1.16
pkgrel=3
pkgdesc="Date formating subroutines"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
source=(http://www.cpan.org/authors/id/G/GB/GBARR/${_realname}-${pkgver}.tar.gz)
options=(!emptydirs)
replaces=('timedate')
provides=('timedate')
md5sums=('b3cc35a7cabd106ac8829d2f2ff4bd9d')

build() {
  cd $startdir/src/${_realname}-${pkgver}

  # install module in vendor directories.
  perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
# vim: ts=2 sw=2 et ft=sh
