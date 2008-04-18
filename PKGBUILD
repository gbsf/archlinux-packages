# $Id$
# Maintainer: Travis Willard <travisw@wmpub.ca>
# Contributor: Wael Nasreddine <gandalf@siemens-mobiles.org>

pkgname=perl-passwd-md5
_realname=Crypt-PasswdMD5
pkgver=1.3
pkgrel=3
pkgdesc="Provides a crypt()-compatible interface to new MD5-based crypt()"
arch=('i686' 'x86_64')
license=('GPL' 'PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/L/LU/LUISMUNOZ/${_realname}-$pkgver.tar.gz)
md5sums=('368205b1be8c0d4f807afe25d6fbd1ad')

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
