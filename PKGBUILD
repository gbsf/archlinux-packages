# $Id: PKGBUILD,v 1.6 2006/03/05 13:56:53 jgc Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: forest76 <forestt@poczta.onet.pl>
# Thanx to: neri for the IM-detection fix

pkgname=autotrace
pkgver=0.31.1
pkgrel=5
pkgdesc='autotrace is a utility to trace bitmaps: convert bitmaps to vector graphics'
url='http://autotrace.sourceforge.net/'
depends=(pstoedit)
source=(http://ftp1.sourceforge.net/autotrace/$pkgname-$pkgver.tar.gz
	aclocal-fixes.patch)
md5sums=(54eabbb38d2076ded6d271e1ee4d0783 94b82727bb1749fc252ddba43ad586f2)

build() {
    cd $startdir/src/$pkgname-$pkgver
    patch -Np0 -i ${startdir}/src/aclocal-fixes.patch || return 1

    # Fix IM detection for 6.x.y:
    sed -i 's|\\>= 2|\\>= 0|' configure
    chmod 755 configure

    ./configure --prefix=/usr
    make || return 1
    make DESTDIR=$startdir/pkg install

    find $startdir/pkg -name '*.la' -exec rm {} \;
}
