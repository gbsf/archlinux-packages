# $Id: PKGBUILD,v 1.14 2007/09/08 17:40:54 jeff Exp $
# Maintainer: phrakture <aaronmgriffin-at-diespam-gmail.com>
# Contributor: lucke <lucke at o2 dot pl>

pkgname=weechat
pkgver=0.2.6
pkgrel=1
pkgdesc="Fast, light & extensible IRC client (curses UI)"
arch=(i686 x86_64)
license=('GPL')
url="http://weechat.flashtux.org/index.php?lang=en"
depends=('perl' 'python>=2.5' 'ruby' 'gnutls' 'lua' 'aspell')
source=(http://weechat.flashtux.org/download/$pkgname-$pkgver.tar.bz2)
options=(!libtool)
md5sums=('42f96620c3b2fd3dca9768d9ce16dd06')

build()
{
  cd $startdir/src/$pkgname-$pkgver
  ./configure --prefix=/usr --with-debug=0 LDFLAGS="-lm -ldl"
  make || return 1
  make DESTDIR=${startdir}/pkg install
}

md5sums=('ccdecf663b0050a23049acb4b9a76193')
sha1sums=('d31ca0b563941813a337aa91f38a8e80877b0d8b')
