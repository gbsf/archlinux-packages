# $Id: PKGBUILD,v 1.1 2004/09/30 11:29:10 damir Exp $
# Contributor: lanrat
# Maintainer: damir <damir@archlinux.org>

pkgname=fortune-mod-zx-error
pkgver=1.0
pkgrel=1
pkgdesc="ZX Spectrum error messages fortune cookie files"
url="http://melkor.dnp.fmph.uniba.sk/~garabik/fortunes-zx-error/"
depends=('fortune-mod')
groups=('fortune-mods')
source=(http://melkor.dnp.fmph.uniba.sk/~garabik/fortunes-zx-error/fortunes-zx-error-1.0.tar.gz)
md5sums=('4e539bf158784c4edb8ff15ca6d3d3ab')

build() {

    install -D -m644 $startdir/src/fortunes-zx-error-$pkgver/zx/error \
        $startdir/pkg/usr/share/fortune/zx-error

    install -D -m644 $startdir/src/fortunes-zx-error-$pkgver/zx/error.dat \
        $startdir/pkg/usr/share/fortune/zx-error.dat
}