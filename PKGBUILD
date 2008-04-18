# $Id$
# Maintainer: Jan de Groot <jgc@archlinux.org>
pkgname=gnomecanvas-perl
_realname=Gnome2-Canvas
pkgver=1.002
pkgrel=4
pkgdesc="Gnome2-Canvas perl bindings for libgnomecanvas"
arch=(i686 x86_64)
license=('LGPL')
url="http://gtk2-perl.sourceforge.net/"
makedepends=('perl-extutils-pkgconfig' 'perl-extutils-depends')
depends=('gtk2-perl' 'libgnomecanvas' 'perl>=5.10.0')
options=(!emptydirs)
source=(http://downloads.sourceforge.net/sourceforge/gtk2-perl/${_realname}-${pkgver}.tar.gz)
md5sums=('93405a987ba4bbd03c2f91592b88f5cb')

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
