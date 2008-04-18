# $Id$
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: judd <jvinet@zeroflux.org>

pkgname=sysklogd
pkgver=1.5
pkgrel=2
pkgdesc="System and kernel log daemons"
arch=('i686' 'x86_64')
url="http://www.infodrom.org/projects/sysklogd/"
license=('GPL' 'BSD')
depends=('glibc' 'logrotate')
provides=('logger')
backup=(etc/syslog.conf)
source=(http://www.infodrom.org/projects/sysklogd/download/$pkgname-$pkgver.tar.gz \
        syslog.conf syslog.logrotate syslogd klogd LICENSE)
md5sums=('e053094e8103165f98ddafe828f6ae4b' 'b8bc568494359fa932b7a5e17c4ba4de'\
         'fb3fdb03959ff62ede00487c853bb950' '92531ee64cdc0ca978bbe9a81c269211'\
         'c2fe75c82c35371972b6ceda72d6a861' '7930f7ff5038e1318511624e348581cc')
sha1sums=('070cce745b023f2ce7ca7d9888af434d6d61c236'
          '35b4cb76109a6ffe9269021a6bfb4f8da614a4eb'
          'e67c0f78f13c94507d3f686b4e5b8340db4624fd'
          '848beb23b9ca4de19c6022df03878dbe57e04c0a'
          'f46088f761c033562a59bc13d4888b7343bc02fc'
          'c416bcefd3d3d618139cc7912310caddf34c0c0b')

build() {
  cd $startdir/src/$pkgname-$pkgver
  sed -i "s/-O3/${CFLAGS} -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE/" Makefile || return 1
  make || return 1
  install -d $startdir/pkg/usr/sbin
  install -d $startdir/pkg/usr/share/man/{man5,man8}
  make INSTALL=/bin/install prefix=$startdir/pkg install
  install -D -m644 ../syslog.conf $startdir/pkg/etc/syslog.conf
  install -D -m644 ../syslog.logrotate $startdir/pkg/etc/logrotate.d/syslog
  install -D -m755 ../syslogd $startdir/pkg/etc/rc.d/syslogd
  install -D -m755 ../klogd $startdir/pkg/etc/rc.d/klogd
  install -D -m644 ../LICENSE $startdir/pkg/usr/share/licenses/$pkgname/LICENSE
}
