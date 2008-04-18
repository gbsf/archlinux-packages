# $Id$
# Contributor: Dennis "Gyroplast" Herbrich <dennis@archlinux.org>
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=isdn4k-utils
pkgver=3.2p1
pkgrel=3
pkgdesc="User space administration programs and tools for ISDN"
arch=(i686 x86_64)
url="http://www.isdn4linux.de/"
depends=('ncurses') 
backup=(etc/isdn/{callerid.conf,isdn.conf,rate.conf,isdnlog.isdnctrl0.options})
source=(ftp://ftp.isdn4linux.de/pub/isdn4linux/utils/${pkgname}.v${pkgver}.tar.bz2 \
        config gcc3.3-slashdev.patch gcc34.patch \
	http://cvs.mandriva.com/cgi-bin/cvsweb.cgi/~checkout~/SPECS/isdn4k-utils/isdn4k-utils-gcc4.patch)
md5sums=('d347afa462e46eccfd1284aebae227b6' '5791a5cb34c67f4e3d94b811b6bdbc1d'\
         '32f94ab17f6c2a1d5ab72b8b07a175ea' 'd90d56e1ecfb9329ff09d651b85f5c55'\
         '7993f27b8d7239a35374da7d8f358cb9')

build() {
  cd $startdir/src/$pkgname
  export MAKEFLAGS="j1"
  patch -Np1 -i ../gcc3.3-slashdev.patch
  patch -Np1 -i ../gcc34.patch
  patch -Np1 -i ../isdn4k-utils-gcc4.patch
  cp ../config ./.config
  make subconfig || return 1
  make || return 1
  mkdir -p $startdir/pkg/sbin
  make DESTDIR=$startdir/pkg install
}
