# $Id: PKGBUILD,v 1.9 2008/02/05 18:47:50 paul Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
pkgname=pypgsql
pkgver=2.5.1
pkgrel=4
pkgdesc="A python client library for postgresql"
arch=(i686 x86_64)
license=('CNRI')
url="http://pypgsql.sourceforge.net/"
depends=('python-egenix-mx-base>=2.0.6-3' 'postgresql-libs>=8.2.3')
source=(http://heanet.dl.sourceforge.net/sourceforge/${pkgname}/pyPgSQL-${pkgver}.tar.gz)
md5sums=('82670f6f1652aa4766fdaec2cb43debd')

build() {
  cd ${startdir}/src/pyPgSQL-${pkgver} || return 1
  python setup.py install --root=${startdir}/pkg || return 1
}
