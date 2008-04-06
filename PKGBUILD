# $Id: PKGBUILD,v 1.6 2007/05/16 21:53:41 jgc Exp $
# Maintainer: Jason Chu <jason@archlinux.org>
pkgname=pyvorbis
pkgver=1.4
pkgrel=3
pkgdesc="Python vorbis wrapper library"
arch=(i686 x86_64)
license=('LGPL')
url="http://www.andrewchatham.com/pyogg/"
depends=('python>=2.5' 'libvorbis' 'pyogg>=1.3-3')
conflicts=()
backup=()
install=
source=(http://ekyo.nerim.net/software/pyogg/${pkgname}-${pkgver}.tar.gz
	pyvorbis-1.4-python2.5.patch
	pyogg-ticket2-fix.patch)
md5sums=('b4921e792c0a74f75b9d3057df10ee7c'
	  'f971a6f0ebb6cb7fe00dfc1f778b2d0d'
	  '3547bba78916ef9030bff6fe67194714')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np0 -i ${startdir}/src/pyvorbis-1.4-python2.5.patch || return 1
  patch -Np0 -i ${startdir}/src/pyogg-ticket2-fix.patch || return 1
  ./config_unix.py --prefix=/usr
  python setup.py install --root=${startdir}/pkg
}
