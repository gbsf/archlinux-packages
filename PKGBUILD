# $Id$
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Ben Mazer <blm@groknil.org>

pkgname=msmtp
pkgver=1.4.13
pkgrel=1
pkgdesc="a mini smtp client"
arch=(i686 x86_64)
license=('GPL2')
url="http://msmtp.sourceforge.net"
depends=('gnutls>=2.0' 'libidn')
provides=('smtp-forwarder')
source=(http://dl.sourceforge.net/sourceforge/msmtp/${pkgname}-${pkgver}.tar.bz2)
md5sums=('021a91d7145100ad0f00c912c8104e03')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc --with-ssl=gnutls
  make || return 1
  make prefix=${startdir}/pkg/usr install
  # this can not be the default
  #install -Dm644 doc/msmtprc-system.example $startdir/pkg/etc/msmtprc
}
