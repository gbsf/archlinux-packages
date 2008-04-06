# $Id: PKGBUILD,v 1.8 2006/05/29 22:16:49 jgc Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Aurelien Gateau <aurelien.gateau@free.fr>

pkgname=wput
pkgver=0.6
pkgrel=2
pkgdesc="A command line tool to upload files to FTP site, the opposite to wget"
arch=(i686)
#url="http://itooktheredpill.dyndns.org/wput/"
url="http://wput.sourceforge.net/"
depends=('glibc' 'gnutls>=1.4.0')
license=("GPL")
source=("http://switch.dl.sourceforge.net/sourceforge/wput/wput-$pkgver.tgz")
#source=(http://itooktheredpill.dyndns.org/wput/$pkgname-$pkgver.tgz)

build() {
   cd $startdir/src/$pkgname
   ./configure --prefix=/usr
   make || return 1
   mkdir -p $startdir/pkg/usr/bin
   mkdir -p $startdir/pkg/usr/share/man/man1
   make prefix=$startdir/pkg/usr install
}
