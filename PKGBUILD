# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=netkit-bsd-finger
pkgver=0.17
pkgrel=3
pkgdesc="bsd-finger ported to Linux"
depends=('glibc' 'xinetd')
source=(ftp://ftp.uk.linux.org/pub/linux/Networking/netkit/bsd-finger-$pkgver.tar.gz finger.xinetd)
md5sums=('52bf281aac8814bf56cdc92f7661ee75' 'a8682004dc8dee356065162bde892b47')
url="ftp://ftp.uk.linux.org/pub/linux/Networking/netkit"

build() {
   cd $startdir/src/bsd-finger-$pkgver
   mkdir -p $startdir/pkg/usr/{bin,sbin} $startdir/pkg/usr/man/{man1,man8} $startdir/pkg/etc/xinetd.d
   ./configure --prefix=$startdir/pkg/usr
   sed -i 's@include <sys/time.h>@include <time.h>@' $startdir/src/bsd-finger-$pkgver/finger/lprint.c 
   sed -i 's@include <sys/time.h>@include <time.h>@' $startdir/src/bsd-finger-$pkgver/finger/sprint.c 
   make || return 1
   make DESTDIR=$startdir/pkg install
   install -m644 $startdir/src/finger.xinetd $startdir/pkg/etc/xinetd.d/finger
}
