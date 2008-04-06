# $Id: PKGBUILD,v 1.9 2008/01/02 05:00:32 kevin Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
# Contributor: herb <hrose@archlinux.org>

pkgname=perlxml
_realname=XML-Parser
pkgver=2.36
pkgrel=1
pkgdesc="XML::Parser - an XML parser module for perl"
arch=(i686 x86_64)
license=('GPL' 'PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perl>=5.10.0' 'expat>=2.0')
options=(!emptydirs)
source=(http://search.cpan.org/CPAN/authors/id/M/MS/MSERGEANT/${_realname}-${pkgver}.tar.gz)
md5sums=('1b868962b658bd87e1563ecd56498ded')

build() {
  cd ${startdir}/src/${_realname}-${pkgver}
  
  # install module in vendor directories.
  perl Makefile.PL INSTALLDIRS=vendor || return 1
  make MAN1EXT=1p MAN3EXT=3pm || return 1
  make install MAN1EXT=1p MAN3EXT=3pm DESTDIR=${startdir}/pkg || return 1

  # remove perllocal.pod and .packlist.
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete
}
