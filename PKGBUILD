# $Id: PKGBUILD,v 1.9 2006/03/12 13:57:18 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Damir Perisa <damir.perisa@bluewin.ch>

pkgname=hdup
pkgver=2.0.14
pkgrel=1
pkgdesc="The little, spiffy, backup tool"
url="http://miek.nl/projects/hdup2/"
depends=('coreutils' 'mcrypt' 'openssh' 'gnupg' 'gzip' 'bzip2' 'lzop' 'glibc' 'glib2')
source=($url/$pkgname-$pkgver.tar.bz2)

backup=('etc/hdup/hdup.conf')

build() {
  cd $startdir/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc
  make || return 1
  make DESTDIR=$startdir/pkg/ \
       install
  chmod a+r $startdir/pkg/etc/hdup/hdup.conf
  chmod a+r $startdir/pkg/etc/hdup/postrun-warn-user
}

