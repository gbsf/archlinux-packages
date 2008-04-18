# $Id$
# Maintainer : Tobias Powalowski <tpowa@archlinux.org>

pkgname=intel-536ep-utils
name=intel-536EP
pkgver=2.56.76.0
pkgrel=28
pkgdesc="Userspace tools for Intel Modem Drivers for 536EP chipset."
arch=(i686)
license=('custom:"INTEL536"')
url="http://linmodems.technion.ac.il/packages/Intel/"
depends=('bash' 'udev')
source=(http://linmodems.technion.ac.il/packages/intel/Philippe.Vouters/intel-536EP-2.56.76.0_23_02_2007.tgz  intel-536EP.rc.d)

build() {
   cd $startdir/src/intel-536EP-2.56.76.0
  # Install driver loader
  install -D -m 755  hamregistry $startdir/pkg/usr/sbin/hamregistry
  #Install daemon
  install -D -m 755  $startdir/src/intel-536EP.rc.d $startdir/pkg/etc/rc.d/intel-536EP
  # install modem udev rule
  mkdir -p $startdir/pkg/etc/udev/rules.d
  echo 'ACTION=="add", SUBSYSTEM=="pci", ENV{MODALIAS}=="pci:v00008086d00001040sv000016BEsd00001040bc07sc80i00", RUN+="/lib/udev/load-modules.sh intel536"' > $startdir/pkg/etc/udev/rules.d/intel536.rules
  echo 'KERNEL=="536ep[0-9]", MODE="0660", GROUP="tty", , RUN+="/lib/udev/load-modules.sh ppp-generic" SYMLINK+="modem"' >> $startdir/pkg/etc/udev/rules.d/intel536.rules
  # install license file
  install -D -m644  $startdir/src/intel-536EP-2.56.76.0/license.txt $startdir/pkg/usr/share/licenses/intel536/license.txt
 }
