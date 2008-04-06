# $Id: PKGBUILD,v 1.29 2008/02/17 23:45:54 damir Exp $
# Maintainer: damir <damir@archlinux.org>

pkgname=avidemux
pkgver=2.4.1
origver=$pkgver
pkgrel=1
pkgdesc="A graphical tool to edit video (filter/re-encode/split)"
arch=("i686" "x86_64")
license=('GPL2')
url="http://fixounet.free.fr/avidemux/"
depends=('libxv' 'libvorbis' 'libxml2' 'gtk2>=2.10' 'alsa-lib' 'lame' 'xvidcore' 'faad2' 'faac' 'sdl' 'x264>=20070616' 'x264<=20071202')

# neededpatchesuris=(http://download.berlios.de/avidemux/2.0.38_eq2_patch.diff)
# neededpatches=(2.0.38_eq2_patch.diff)

#source=(http://fixounet.free.fr/avidemux/$pkgname-$pkgver.tar.gz)
options=('!makeflags')
source=("http://download.berlios.de/avidemux/${pkgname}_$origver.tar.gz" \
        $neededpatchesuris \
        "avidemux.desktop")

build() {
  cd $startdir/src/${pkgname}_$origver

  # apply patches if needed:
    if [ -n "$neededpatches" ]    # $neededpatches is not NULL
    then
    for i in $neededpatches; do
        cat $startdir/src/$i | patch -d $pkgname -p0 || return 1
    done
    fi

  # the author uses an older version of automake:
  #autoreconf --force || return 1
  make -f Makefile.dist || return 1

  # finally, we can start building:
  ./configure --prefix=/usr \
	      --without-arts --without-esd
  make || return 1
  make prefix=$startdir/pkg/usr install || return 1

  # freedesktop thingies
  install -Dm644 avidemux_icon.png ${startdir}/pkg/usr/share/pixmaps/avidemux.png
  install -Dm644 $startdir/src/$pkgname.desktop $startdir/pkg/usr/share/applications/avidemux.desktop

}

md5sums=('2d972f6b8795c891dd6e0ebe5035852a'
         'a9cf864c209782307afda5bc6a33a0cd')
