# Maintainer : James Rayner <iphitus@gmail.com>
# Contributor: Roberto Salas <ro0xito@gmail.com>

pkgname=alltray
pkgver=0.69
pkgrel=3
pkgdesc="Drop's any app in the tray."
license=("GPL")
arch=(i686 x86_64)
url="http://alltray.sourceforge.net"
depends=('gconf')
source=(http://optusnet.dl.sourceforge.net/sourceforge/alltray/$pkgname-$pkgver.tar.gz)

build()
{
  cd $startdir/src/$pkgname-$pkgver
 
  #Arch64 fix
  if [ "$CARCH" = "x86_64" ]; then
       ./configure --prefix=/usr --disable-gconf
  else ./configure --prefix=/usr 
  fi
 
  make || return 1
  make DESTDIR=$startdir/pkg install

  find $startdir/pkg -name *.la -exec rm {} +
}

md5sums=('ebc1c8eea945aff703d758e296b76cc9')
