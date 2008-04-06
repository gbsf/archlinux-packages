# $Id: PKGBUILD,v 1.10 2007/03/05 18:24:49 judd Exp $
# Maintainer: Judd Vinet <jvinet@zeroflux.org>
pkgname=mod_python
pkgver=3.3.1
pkgrel=1
pkgdesc="an Apache module that embeds the Python interpreter within the server"
arch=(i686 x86_64)
url="http://www.modpython.org/"
depends=('apache>=2.2.0' 'python>=2.5-1')
install=mod_python.install
source=(http://www.apache.org/dist/httpd/modpython/mod_python-$pkgver.tgz mod_python.patch apache22.patch)
md5sums=('a3b0150176b726bd2833dac3a7837dc5' '800c9d65cfef8105e9d1729653d69a39'\
         '24a1ad9acf709fb75d4aa836e37fdecc')

build() {
  cd $startdir/src/$pkgname-$pkgver
  #patch -Np1 -i ../apache22.patch || return 1
  #patch -p1 -i ../mod_python.patch || return 1
  autoconf
  automake
  ./configure --prefix=/usr
  make || return 1
  make DESTDIR=$startdir/pkg install
}
