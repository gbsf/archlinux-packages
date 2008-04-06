# $Id: PKGBUILD,v 1.16 2008/02/04 02:48:25 eric Exp $
# Maintainer: Eric Belanger <eric@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
# Contributor: Lukas Sabota <punkrockguy318@cocmast.net> (Timidity Patch)

pkgname=sdl_mixer
pkgver=1.2.8
pkgrel=2
pkgdesc="A simple multi-channel audio mixer"
arch=('i686' 'x86_64')
url="http://www.libsdl.org/projects/SDL_mixer/"
license=('LGPL' 'GPL')
depends=('sdl>=1.2.12' 'libvorbis' 'libmikmod')
options=('!libtool')
source=(http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-${pkgver}.tar.gz)
md5sums=('0b5b91015d0f3bd9597e094ba67c4d65')

build() {
  cd ${startdir}/src/SDL_mixer-${pkgver}
  sed -i 's|/usr/local/lib/timidity|/usr/lib/timidity|' timidity/config.h || return 1
  sed -i 's|/etc/timidity/timidity.cfg|/etc/timidity++/timidity.cfg|' timidity/config.h || return 1
  ./configure --prefix=/usr --enable-music-ogg 
  make || return 1
  make DESTDIR=${startdir}/pkg install
}
