# Maintainer: Tom Killian <tomk@runbox.com>
# Contributor: FJ <joostef@gmail.com>

pkgname=perl-template-toolkit
_realname=Template-Toolkit
pkgver=2.19
pkgrel=3
pkgdesc="Perl template processing system"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl-appconfig' 'perl>=5.10.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/A/AB/ABW/${_realname}-$pkgver.tar.gz) 
md5sums=('5c886d392ca57a13ded91fa64834913c')

build() {
  cd  $startdir/src/${_realname}-$pkgver
  # install module in vendor directories.
  PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor TT_EXTRAS=n || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
