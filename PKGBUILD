# $Id: PKGBUILD,v 1.6 2008/01/18 04:42:22 kevin Exp $
# Maintainer: Kevin Piche <kevin@archlinux.org>
# Contributor: K. Piche <kpiche@rogers.com>

pkgname=perl-file-basedir
_realname=File-BaseDir
pkgver=0.03
pkgrel=2
pkgdesc='Use the Freedesktop.org base directory specification'
arch=(i686 x86_64)
license=('GPL' 'PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0')
makedepends=('perl-module-build')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/P/PA/PARDUS/${_realname}-$pkgver.tar.gz)
md5sums=('527596f1507894dfaacdda72ea6dbb31')

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
