# $Id$
# Maintainer: Judd Vinet <jvinet@zeroflux.org>
pkgname=rssh
pkgver=2.3.2
pkgrel=2
pkgdesc="A restricted shell for use with OpenSSH, allowing only scp and/or sftp"
arch=(i686 x86_64)
url="http://www.pizzashack.org/rssh/index.shtml"
depends=('openssh' 'glibc')
backup=('etc/rssh.conf')
license=('custom:rssh')
source=(http://dl.sourceforge.net/sourceforge/rssh/rssh-$pkgver.tar.gz \
        rssh.patch)
md5sums=('65712f2c06ff5fc6fc783bc8c2e4e1ba' '7b8c260ce1952afe6ebaf9972bf78341')

build() {
  cd $startdir/src/$pkgname-$pkgver
  patch -Np1 -i ../rssh.patch || return 1
  ./configure --prefix=/usr --libexecdir=/usr/lib/rssh --sysconfdir=/etc
  make || return 1
  make DESTDIR=$startdir/pkg install
  # install license
  install -D -m 644 LICENSE $startdir/pkg/usr/share/licenses/rssh/LICENSE
}
