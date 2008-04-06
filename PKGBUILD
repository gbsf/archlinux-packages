# $Id: PKGBUILD,v 1.4 2008/01/18 04:52:30 kevin Exp $
# Maintainer: Kevin Piche <kevin@archlinux.org>

pkgname=perl-file-tail
_realname=File-Tail
pkgver=0.99.3
pkgrel=3
pkgdesc="Perl/CPAN File::Tail module for reading from continously updated files"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/M/MG/MGRABNAR/${_realname}-$pkgver.tar.gz)
md5sums=('ef0fb7bcb4181ba593f4a09940f61d1c')

build() {
  cd $startdir/src/${_realname}-$pkgver
  # install module in vendor directories.
  perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
