# $Id: PKGBUILD,v 1.1 2004/09/30 11:25:02 damir Exp $
# Contributor: lanrat
# Maintainer: damir <damir@archlinux.org>

pkgname=fortune-mod-hayward
pkgver=1.0
pkgrel=1
pkgdesc="Hayward's Unabridged Dictionary fortune cookie files"
url="http://jonathanscorner.com/etc/fortunes/"
depends=('fortune-mod')
groups=('fortune-mods')
source=(http://jonathanscorner.com/etc/fortunes/hayward-fortunes.tar.gz)
md5sums=('e342194ed244171c398ed2d4c180394c')

build() {

    install -D -m644 $startdir/src/haywards-definitions \
        $startdir/pkg/usr/share/fortune/hayward

    install -D -m644 $startdir/src/haywards-definitions.dat \
        $startdir/pkg/usr/share/fortune/hayward.dat

    install -D -m644 $startdir/src/xian-koans \
        $startdir/pkg/usr/share/fortune/xian-koans

    install -D -m644 $startdir/src/xian-koans.dat \
        $startdir/pkg/usr/share/fortune/xian-koans.dat

}