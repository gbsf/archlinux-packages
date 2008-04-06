# $Id: PKGBUILD,v 1.12 2008/03/29 03:26:56 eric Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>

pkgname=timidity++
pkgver=2.13.2
pkgrel=6
pkgdesc="TiMidity is a MIDI to WAVE converter and player"
arch=(i686 x86_64)
license=('GPL')
depends=('libao' 'libvorbis' 'jack-audio-connection-kit>=0.102.20-2')
makedepends=('xaw3d' 'gtk2' 'tk' 'libxaw')
source=(http://heanet.dl.sourceforge.net/sourceforge/timidity/TiMidity++-${pkgver}.tar.gz
	timidity.cfg
        timidity++.sh
	2.13.2-gcc4.patch
	TiMidity++-2.13.2+flac-1.1.3.patch
	timidity++-2.13.2-exiterror.patch
	timidity++-2.13.2-gtk26.patch)
md5sums=('4a1644d1893437b372769cf331611e76' '3fcc8f065c959205113fa7e9ab2be3c6'\
         '35606c12af9c6be9361d64fc536f046f' '0868926c5290817cacb9a1849bc043c2'\
         'fcbd27ff83066f69a3f8bd2442a3b3e2' '31bdaea612f18e2c3d45a8a73ab44c81'\
         '16a4adec164836d4390dc6b0f9a69ce9')
url="http://timidity.sourceforge.net"
backup=('etc/timidity++/timidity.cfg')
sha1sums=('8d1762aeda0ed765f2f49e5560a8700f490c1853'
	  '660b3afbb720d26e8f008034cee66dd8da082d6e'
	  '9f3e732a7ca1e97119a76df62ecf154df04d4f77'
	  '8d50618a2379c078b07e8d0fc59457855c16106c'
	  '59b0dbe3cde8f7b41d83676d8c37809255d3fb36'
	  '7cd697b4f7cb1ce45cec46c2e0f6e5e8bf1d9d60'
	  'ce115e84d99708f0bdb5b57bd98b0c3514fa2bf4')

build() {
  cd ${startdir}/src/TiMidity++-${pkgver}
  patch -Np1 -i ${startdir}/src/2.13.2-gcc4.patch || return 1
  patch -Np1 -i ${startdir}/src/TiMidity++-2.13.2+flac-1.1.3.patch || return 1
  patch -Np1 -i ${startdir}/src/timidity++-2.13.2-exiterror.patch || return 1
  patch -Np0 -i ${startdir}/src/timidity++-2.13.2-gtk26.patch || return 1
  autoconf
  sed -i 's/tcl8.4/tcl8.5/' configure
  sed -i 's/tk8.4/tk8.5/' configure
  ./configure --prefix=/usr \
	--with-default-path=/etc/timidity++/ \
	--enable-server \
	--enable-alsaseq \
	--enable-spectrogram \
	--enable-audio=alsa,oss,ao,vorbis,flac,esd,jack \
	--enable-dynamic=ncurses,tcltk,vt100,xaw,gtk \
	--disable-gtktest
  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  install -D -m644 ${startdir}/src/timidity.cfg ${startdir}/pkg/etc/timidity++/timidity.cfg
  install -D -m755 ${startdir}/src/timidity++.sh ${startdir}/pkg/etc/rc.d/timidity++
}
