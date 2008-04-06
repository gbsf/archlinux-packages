# $Id: PKGBUILD,v 1.6 2008/01/24 04:48:58 kevin Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: kleptophobiac@gmail.com

pkgname=perl-xml-simple
_realname=XML-Simple
pkgver=2.18
pkgrel=2
pkgdesc="Simple XML parser for perl"
arch=(i686 x86_64)
license=('PerlArtistic')
url="http://search.cpan.org/dist/${_realname}/"
depends=('perlxml' 'perl>=5.10.0')
options=('!emptydirs')
source=(ftp://ftp.cpan.org/pub/CPAN/authors/id/G/GR/GRANTM/${_realname}-${pkgver}.tar.gz)
md5sums=('593aa8001e5c301cdcdb4bb3b63abc33')

build() {
  cd ${startdir}/src/${_realname}-${pkgver}
  perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make DESTDIR=${startdir}/pkg install || return 1

  find ${startdir}/pkg -name '.packlist' -delete
  find ${startdir}/pkg -name 'perllocal.pod' -delete
}
