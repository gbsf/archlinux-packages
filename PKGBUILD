# $Id: PKGBUILD,v 1.1 2004/09/30 09:56:53 damir Exp $
# Contributor : lanrat
# Maintainer: damir <damir@archlinux.org>

pkgname=fortune-mod-homer
pkgver=20011112
pkgrel=1
pkgdesc="Quotable Homer fortune cookie files"
url="http://www.cs.indiana.edu/~crcarter/homer/homer.html"
depends=('fortune-mod')
groups=('fortune-mods')
source=(http://www.cs.indiana.edu/~crcarter/homer/homer-quotes.tar.gz)
md5sums=('ca7ed106f5e828f826eea1d759e00fa0')

build() {

    cd $startdir/src/fortune-homer

    install -D -m644 $startdir/src/fortune-homer/homer \
        $startdir/pkg/usr/share/fortune/homer

    install -D -m644 $startdir/src/fortune-homer/homer.dat \
        $startdir/pkg/usr/share/fortune/homer.dat

}