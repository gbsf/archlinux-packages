# $Id$
# Maintainer: kevin <kevin@archlinux.org>
# Contributor: Eric Johnson <eric@coding-zone.com>

pkgname=perl-mail-spf-query
_realname=Mail-SPF-Query
pkgver=1.999.1
pkgrel=3
pkgdesc="Perl module that provides SPF support"
arch=(i686 x86_64)
license=('GPL' 'PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl-net-cidr-lite>=0.15' 'perl-net-dns>=0.46' 'perl-sys-hostname-long' 'perl-uri' 'perl>=5.10.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/J/JM/JMEHNLE/mail-spf-query/${_realname}-${pkgver}.tar.gz)
md5sums=('6d62d024d1614fa1fa4f43bd39ee7bf0')

build() {
  cd ${startdir}/src/${_realname}-${pkgver}
  # install module in vendor directories.
  perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
