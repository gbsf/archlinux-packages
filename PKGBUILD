# $Id: PKGBUILD,v 1.26 2008/03/29 03:22:32 eric Exp $
# Maintainer: Juergen Hoetzel <juergen@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Contributor: dorphell <dorphell@archlinux.org>

pkgname=snd
pkgver=9.7
pkgrel=2
pkgdesc="Snd is the emacs of sound editor"
arch=('i686' 'x86_64')
license=('custom')
depends=('guile>=1.8.1' 'lesstif' 'fam' 'libxpm' 'libtool>=2.2')
url="http://ccrma.stanford.edu/software/snd/"
source=(http://switch.dl.sourceforge.net/sourceforge/${pkgname}/${pkgname}-${pkgver}.tar.gz)
md5sums=('7e1f70db46d6dfba0d910da05485f2d7')


build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --without-gsl --without-fftw
  make || return 1
  make prefix=${startdir}/pkg/usr install
  install -D -m644 COPYING $startdir/pkg/usr/share/licenses/$pkgname/COPYING
}

