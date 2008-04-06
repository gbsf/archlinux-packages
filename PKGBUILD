# $Id: PKGBUILD,v 1.6 2008/01/18 04:41:07 kevin Exp $
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Tobias Kieslich <tobias@justdreams.de>

pkgname=perl-event-execflow
_realname=Event-ExecFlow
pkgver=0.63
pkgrel=3
pkgdesc="Framework for perl-events"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://www.exit1.org/${_realname}/"
depends=('perl-anyevent' 'perl-libintl-perl' 'perl>=5.10.0')
options=(!emptydirs)
source=(http://www.exit1.org/packages/${_realname}/dist/${_realname}-${pkgver}.tar.gz)
md5sums=('79116732b550701a3436a448581e01da')

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
