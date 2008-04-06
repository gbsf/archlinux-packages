# $Id: PKGBUILD,v 1.2 2007/09/20 16:53:36 jgc Exp $
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Chaiwat Suttipongsakul <cwt114@gmail.com>

pkgname=libdatrie
pkgver=0.1.2
pkgrel=1
pkgdesc="Libdatrie is an implementation of double-array structure for representing trie, as proposed by Junichi Aoe."
url="http://linux.thai.net/~thep/datrie/datrie.html"
license=('LGPL')
arch=('i686' 'x86_64')
depends=('glibc')
options=('!libtool' '!emptydirs')
source=(http://linux.thai.net/pub/thailinux/software/libthai/${pkgname}-${pkgver}.tar.gz)
md5sums=('3eaedd5452149e11547a0dc74ee3fcfd')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --disable-static
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
