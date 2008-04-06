# $Id: PKGBUILD,v 1.9 2008/03/06 08:27:58 tpowa Exp $
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>
pkgname=slmodem-utils
pkgver=2.9.11
pkgrel=16
pkgdesc="Userspace tools for the Smartlink winmodems."
arch=(i686)
license=('custom')
url="http://linmodems.technion.ac.il/packages/smartlink/" 
depends=('bash' 'alsa-lib') 
source=(http://linmodems.technion.ac.il/packages/smartlink/slmodem-2.9.11-20080126.tar.gz \
slmodem.rc.d slmodem-alsa.rc.d slmodem.conf.d slmodem-alsa.conf.d) 
options=(!libtool)

build() { 
  cd $startdir/src/slmodem-$pkgver-20080126
  make SUPPORT_ALSA=1 DESTDIR=$startdir/pkg all || return 1 
  #Install driver loader
  install -D -m 755 modem/slmodemd $startdir/pkg/usr/sbin/slmodemd
  # Install daemon files
  install -D -m 755 $startdir/src/slmodem.rc.d $startdir/pkg/etc/rc.d/slmodem
  install -D -m 755 $startdir/src/slmodem-alsa.rc.d $startdir/pkg/etc/rc.d/slmodem-alsa
  install -D -m 644 $startdir/src/slmodem.conf.d $startdir/pkg/etc/conf.d/slmodem
  install -D -m 644 $startdir/src/slmodem-alsa.conf.d $startdir/pkg/etc/conf.d/slmodem-alsa
  # adding udev symlink for /dev/modem
  mkdir -p $startdir/pkg/etc/udev/rules.d
  echo 'ACTION=="add", DRIVERS=="slamr", RUN+="/lib/udev/load-modules.sh ppp-generic"' > $startdir/pkg/etc/udev/rules.d/slmodem.rules
  echo 'KERNEL==slamr[0-9]', MODE="0660", GROUP="tty", SYMLINK+="modem" >> $startdir/pkg/etc/udev/rules.d/slmodem.rules
  echo 'ACTION=="add", DRIVERS=="slusb", RUN+="/lib/udev/load-modules.sh ppp-generic"' >> $startdir/pkg/etc/udev/rules.d/slmodem.rules
  echo 'KERNEL==slusb[0-9]', MODE="0660", GROUP="tty", SYMLINK+="modem" >> $startdir/pkg/etc/udev/rules.d/slmodem.rules
  # install license
  install -D -m644 COPYING $startdir/pkg/usr/share/licenses/$pkgname/license.txt
}
md5sums=('8670dd7e1e1a46296ac4c80f7ac0471d'
         '838e1bde2a3e6fed35c075c25ee79da6'
         '1494b0c87d9ccd3615a1708f24d78f8d'
         '31f9d0eafe052a37e83c150146472956'
         '03accf76458cbf8afde07e445e9b72d0')
