# $Id: PKGBUILD,v 1.3 2005/02/23 20:21:39 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Committer: Manolis Tzanidakis <manolis@archlinux.org>

pkgname=dailystrips
pkgver=1.0.28
pkgrel=2
pkgdesc="A perl script which automatically downloads your favorite online comics from the web."
url="http://dailystrips.sourceforge.net"
depends=('perl-libwww' 'perl-timedate')
source=(http://telia.dl.sourceforge.net/sourceforge/$pkgname/$pkgname-$pkgver.tar.bz2 \
        http://members.hellug.gr/nkour/dcapplet/files/dailystrips-def.tar.bz2 )

build() {
  cd $startdir/src/$pkgname-$pkgver
  perl install.pl --scriptdir=$startdir/pkg/usr/bin \
                  --sharedir=$startdir/pkg/usr/share/dailystrips \
                  --docdir=.
  # update strips.def:
  cp -f $startdir/src/strips.def $startdir/pkg/usr/share/dailystrips/strips.def
}
