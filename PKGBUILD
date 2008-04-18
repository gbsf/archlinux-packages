# $Id$
# Maintainer: Thomas Bächler <thomas@archlinux.org>
pkgname=mplayer
pkgver=1.0rc2
pkgrel=3
pkgdesc="A movie player for linux"
arch=(i686 x86_64)
depends=('libxxf86dga' 'libxv' 'libmad' 'libungif' 'cdparanoia' 'gtk2'
         'sdl' 'lame' 'libtheora' 'xvidcore'
         'libgl' 'smbclient' 'aalib' 'jack-audio-connection-kit'
         'x264>=20070616' 'faac' 'lirc-utils' 'ttf-dejavu')
license=('GPL')
url="http://www.mplayerhq.hu/"
makedepends=('libcaca' 'unzip' 'live-media' 'libdca' 'mesa')
backup=('etc/mplayer/codecs.conf' 'etc/mplayer/input.conf')
source=(http://www.mplayerhq.hu/MPlayer/releases/MPlayer-${pkgver}.tar.bz2
        http://www.mplayerhq.hu/MPlayer/skins/Blue-1.7.tar.bz2        
        http://www.mplayerhq.hu/MPlayer/patches/demux_audio_fix_20080129.diff
        http://www.mplayerhq.hu/MPlayer/patches/demux_mov_fix_20080129.diff
        http://www.mplayerhq.hu/MPlayer/patches/url_fix_20080120.diff
        http://www.mplayerhq.hu/MPlayer/patches/stream_cddb_fix_20080120.diff)
md5sums=('7e27e535c2d267637df34898f1b91707'
         'e4e2020d11b681aac898103b3ba723c4'
         '320af7daa1b248ee8e8c15d34d7923e3'
         'ce999929155f509a3e6bee41d9d613ed'
         '6a2c124586e1e6c44ae4ca1b4be9b6e4'
         'c7d1bcdd61fcceb7598d61fe2213c587')

build() {
  cd $startdir/src/MPlayer-${pkgver}

  # Custom CFLAGS break the mplayer build
  unset CFLAGS

  # Add support for gnome screensaver
  #patch -p1 -i ../MPlayer-1.0rc1-gnome-screensaver.patch || return 1
  
  # Fix security issues
  for p in demux_audio_fix_20080129.diff demux_mov_fix_20080129.diff url_fix_20080120.diff stream_cddb_fix_20080120.diff; do
    patch -p0 -i ../${p}
  done
  
  cd $startdir/src/MPlayer-${pkgver}

  ./configure --prefix=/usr --enable-gui --disable-arts --enable-x11 \
      --enable-runtime-cpudetection --confdir=/etc/mplayer --disable-nas \
      --enable-gl --enable-tv-v4l1 --enable-tv-v4l2 --enable-largefiles \
      --disable-liblzo --disable-speex --disable-openal \
      --disable-fribidi --disable-libdv --disable-musepack \
      --language=all --disable-dvdnav --disable-esd --disable-mga \
      --with-extraincdir=/usr/lib/live-media

  [ "$CARCH" = "i686" ] &&  sed 's|-march=i486|-march=i686|g' -i config.mak

  make || return 1
  make -j1 DESTDIR=${startdir}/pkg install
  cp etc/{codecs.conf,input.conf,example.conf} ${startdir}/pkg/etc/mplayer/
  ln -s /usr/share/fonts/TTF/DejaVuSans.ttf ${startdir}/pkg/usr/share/mplayer/subfont.ttf
  rm -rf ${startdir}/pkg/usr/share/mplayer/font
  mv ${startdir}/src/Blue ${startdir}/pkg/usr/share/mplayer/skins/default
}
