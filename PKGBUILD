# $Id: PKGBUILD,v 1.9 2008/03/30 22:13:28 paul Exp $
# Maintainer: eric <eric@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=enscript
pkgver=1.6.4
pkgrel=3
pkgdesc="Convert ASCII files to PostScript suitable for printing"
arch=(i686 x86_64)
depends=('glibc')
license=('GPL2')
source=(http://www.iki.fi/mtr/g$pkgname/$pkgname-$pkgver.tar.gz)
url="http://people.ssh.fi/mtr/genscript/index.html"
md5sums=('b5174b59e4a050fb462af5dbf28ebba3')

build() {
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --sysconfdir=/etc/enscript
  /usr/bin/make || return 1
  /usr/bin/make prefix=$startdir/pkg/usr \
      sysconfdir=$startdir/pkg/etc/enscript install
}
# vim: ts=2 sw=2 et ft=sh
