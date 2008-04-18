# $Id$
# Maintainer: dorphell <dorphell@archlinux.org>
pkgname=mt-st
pkgver=0.9b
pkgrel=1
pkgdesc="Linux SCSI tape driver aware magnetic tape control"
url="ftp://ftp.ibiblio.org/pub/linux/system/backup/"
depends=('glibc')
source=(ftp://ftp.ibiblio.org/pub/linux/system/backup/$pkgname-$pkgver.tar.gz)
md5sums=('c80e992a8d16def7af7421549b26ce77')

build() {
  cd $startdir/src/$pkgname-$pkgver
  make || return 1
  mkdir -p $startdir/pkg/{sbin,bin,usr/man/man1,usr/man/man8}
  make SBINDIR=$startdir/pkg/sbin BINDIR=$startdir/pkg/bin \
    MANDIR=$startdir/pkg/usr/man install
}
