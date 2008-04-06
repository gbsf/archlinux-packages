# $Id: PKGBUILD,v 1.5 2008/01/24 03:31:51 kevin Exp $
# Maintainer: Dale Blount <dale@archlinux.org>

pkgname=perl-net-cidr-lite
_realname=Net-CIDR-Lite
pkgver=0.20
pkgrel=3
pkgdesc="Perl extension for merging IPv4 or IPv6 CIDR addresses"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/D/DO/DOUGW/${_realname}-$pkgver.tar.gz)
md5sums=('54998db6b297ffc8a20adb91ea744200')

build() {
  cd $startdir/src/${_realname}-$pkgver
  # install module in vendor directories.
  PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
