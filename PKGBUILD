# $Id$
# Maintainer: eric <eric@archlinux.org>
# Contributor: Sarah Hay <sarahhay@mb.sympatico.ca>
#

pkgname=cowsay
pkgver=3.03
pkgrel=5
pkgdesc="Add speaking and thinking cows (and a few other creatures) to anything"
depends=('perl')
source=(http://freshmeat.net/redir/$pkgname/1504/url_tgz/$pkgname-$pkgver.tar.gz $pkgname.patch)
url="http://www.nog.net/~tony/warez/cowsay.shtml"
md5sums=('b29169797359420dadb998079021a494' '7091f9a6d97006299a1f27a665b638b6')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 -i ../$pkgname.patch
  echo "$startdir/pkg/usr" | ./install.sh
}
# vim: ts=2 sw=2 et ft=sh
