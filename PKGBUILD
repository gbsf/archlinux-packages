# $Id: PKGBUILD,v 1.31 2007/11/23 15:41:57 pierre Exp $
# Maintainer: Travis Willard <travis@archlinux.org>

pkgname=avahi
pkgver=0.6.22
pkgrel=1
pkgdesc="A multicast/unicast DNS-SD framework"
arch=('i686' 'x86_64')
url="http://www.avahi.org/"
license=('LGPL')
depends=('dbus>=1.1.20-1' 'libcap' 'libdaemon>=0.11' 'gdbm' 'glib2' 'expat')
optdepends=('qt3:Qt3 UI support' 'libglade:Avahi-discover-standalone'
            'nss-mdns:NSS support for mDNS')
makedepends=('mono' 'pygtk' 'gtk-sharp-2' 'dbus-python' 'qt3' 'libglade' 'intltool')
backup=(etc/avahi/avahi-daemon.conf)
install=avahi.install
conflicts=('howl' 'mdnsresponder')
provides=('howl' 'mdnsresponder')
replaces=('howl' 'mdnsresponder')
options=('!libtool')
source=(http://www.avahi.org/download/avahi-${pkgver}.tar.gz gnome-nettool.png)

build() {
  [ -z "${QTDIR}" ] && . /etc/profile.d/qt3.sh
  export MONO_SHARED_DIR=${startdir}/src/.wabi
  mkdir -p ${MONO_SHARED_DIR}

  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr \
    --sysconfdir=/etc \
    --localstatedir=/var \
    --disable-qt4 \
    --disable-monodoc \
    --disable-doxygen-doc \
    --disable-xmltoman \
    --enable-compat-libdns_sd \
    --enable-compat-howl \
    --with-distro=archlinux \
    --with-avahi-priv-access-group=network \
    --enable-autoipd 
  make || return 1
  make DESTDIR=${startdir}/pkg install

  rm -rf ${MONO_SHARED_DIR}
  
  #fix capability
  sed -i -e 's|$DAEMON -D |modprobe capability  > /dev/null 2>\&1 ;  $DAEMON -D |' ${startdir}/pkg/etc/rc.d/avahi-daemon

  sed -i -e 's/netdev/network/g' ${startdir}/pkg/etc/dbus-1/system.d/avahi-dbus.conf
   
  # howl and mdnsresponder compatability
  cd ${startdir}/pkg/usr/include
  ln -s avahi-compat-libdns_sd/dns_sd.h dns_sd.h
  ln -s avahi-compat-howl howl
  cd ${startdir}/pkg/usr/lib/pkgconfig
  ln -s avahi-compat-howl.pc howl.pc
  mkdir -p ${startdir}/pkg/usr/share/pixmaps
  install -m 644 ${startdir}/src/gnome-nettool.png ${startdir}/pkg/usr/share/pixmaps/gnome-nettool.png
}

md5sums=('c84b1a8a23126e188426728710414dc8'
         '42c2905307c7a5dc6ac4b75f4c3d65a3')
