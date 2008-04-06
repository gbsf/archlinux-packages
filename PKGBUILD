# $Id: PKGBUILD,v 1.12 2008/02/21 13:23:03 alexander Exp $
# Maintainer: Alexander Baldeck <alexander@archlinux.org>
# Contributor: Jan de Groot <jgc@archlinux.org>
pkgname=xorg-apps
pkgver=1.0.3
pkgrel=3
pkgdesc="Various X.Org applications"
arch=(i686 x86_64)
url="http://xorg.freedesktop.org/"
depends=(libxcursor libxkbfile libpng libxft libfontenc libxaw)
makedepends=(pkgconfig xbitmaps)

source=(${url}/releases/individual/app/oclock-1.0.1.tar.bz2
        ${url}/releases/individual/app/luit-1.0.3.tar.bz2
        ${url}/releases/individual/app/xclock-1.0.2.tar.bz2
        ${url}/releases/individual/app/xpr-1.0.2.tar.bz2
        ${url}/releases/individual/app/xwd-1.0.1.tar.bz2
        ${url}/releases/individual/app/xwud-1.0.1.tar.bz2
        ${url}/releases/individual/app/x11perf-1.4.1.tar.bz2
        ${url}/releases/individual/app/xbiff-1.0.1.tar.bz2
        ${url}/releases/individual/app/xclipboard-1.0.1.tar.bz2
        ${url}/releases/individual/app/xconsole-1.0.3.tar.bz2
        ${url}/releases/individual/app/xcursorgen-1.0.2.tar.bz2
        ${url}/releases/individual/app/xeyes-1.0.1.tar.bz2
        ${url}/releases/individual/app/xkill-1.0.1.tar.bz2
        ${url}/releases/individual/app/xload-1.0.2.tar.bz2
        ${url}/releases/individual/app/xlogo-1.0.1.tar.bz2
        ${url}/releases/individual/app/xmag-1.0.2.tar.bz2
        ${url}/releases/individual/app/xmessage-1.0.1.tar.bz2
        ${url}/releases/individual/app/xcalc-1.0.2.tar.bz2
	${url}/releases/individual/app/xman-1.0.2.tar.bz2
	${url}/releases/individual/app/xedit-1.0.2.tar.bz2
	${url}/releases/individual/app/xmh-1.0.1.tar.bz2)

build() {
  cd ${startdir}/src
  for i in *; do
    if [ -d "${i}" ]; then
      pushd "${i}"
      case "${i}" in 
        x11perf*)
          sed -e 's|^LIBPATH = $(libdir)|LIBPATH = $(datadir)|' \
	      -i Makefile.* || return 1
	;;
	xedit*)
	  sed -e 's|^XEDITDIR = ${libdir}|XEDITDIR = ${datadir}|' \
	      -i Makefile.* || return 1
	;;
      esac
      ./configure --prefix=/usr --disable-xprint \
                  --with-localealiasfile=/usr/share/X11/locale/locale.alias
      make || return 1
      make DESTDIR=${startdir}/pkg install || return 1
      popd
    fi
  done
}
md5sums=('91f49547f9ed3cd0137c8b7c3183e360'
         'b01e4f71c20fc1c79ed727759c1df40c'
         '6b930326f71993fb54b7203902b387cd'
         '6b3a6896081f628bf5a2c9129417c86f'
         '911addfb7fa402217ddac63e5c1d97c7'
         '6e3c5d0297d88e890b6f5df31f73dd60'
         'fd06c8b8e3572a0e14af65a49e0dd7d1'
         '404f5add4537d22dd109c33e518a5190'
         '2c6ecedb10dc51adbb64c95f22fd99c2'
         '0e1a3110bebabecc2897d67a973526b0'
         '6fc90896b8c786cb1a2100b4167f7874'
         '033f14f7c4e30d1f4edbb22d5ef86883'
         'f66d76abb0f75514ca32272e23cca757'
         'b41ed6b4bcfc9897366c27a94d2bf150'
         '4c5482552f38a7d42398a694cc9b2ee6'
         '7c6a783e42c88360ac31d259a864a19d'
         'b3674c3a00a089764d86aa94e257ccec'
         'd31a99795b9668f047aa11bf36df6df0'
         '855f2dbfa2aff58b8b9cd6a1c1120fad'
         'c56160e93c24ddf17e69891ed50deb72'
         '656bcbdd41818a8b5a9f7dba77a3eeba')
