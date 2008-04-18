# $Id$
# Maintainer: tobias <tobias@archlinux.org>
# Contributor: Jochem Kossen <j.kossen@home.nl>

pkgname=rox
_appname=${pkgname}-filer
pkgver=2.7.1
pkgrel=1
pkgdesc="A small and fast file manager which can optionally manage the desktop background and panels."
arch=(i686 x86_64)
license=('GPL2')
url="http://roscidus.com/desktop/"
depends=('libxml2' 'gtk2' 'shared-mime-info' 'bash' 'libsm' 'libglade')
makedepends=('librsvg')
source=(http://dl.sourceforge.net/sourceforge/${pkgname}/${_appname}-${pkgver}.tar.bz2 \
        ${pkgname}.desktop ${pkgname}.svg)
md5sums=('6302280f57d1f02c07da5637a2609a4f' '80e7a90e9d58375b25494fbdc01a05bd' \
         '658c8648b51e215558e13e6afb2b5c76')

build() {
  cd ${startdir}/src/${_appname}-${pkgver}/Choices
  mkdir -p ${startdir}/pkg/usr/share/Choices
  cp -rp MIME-types ${startdir}/pkg/usr/share/Choices/
 # manually copy the manpages first
  cd ../
  install -Dm 0644 rox.1 ${startdir}/pkg/usr/share/man/man1/rox.1
  cd ${startdir}/pkg/usr/share/man/man1
  ln -sf rox.1 ROX-Filer.1
 # this compiles and installs rox
 cd ${startdir}/src/${_appname}-${pkgver}/ROX-Filer
  ./AppRun --compile
  cd ..
  cp -rp ROX-Filer ${startdir}/pkg/usr/share/
  rm -fr ${startdir}/pkg/usr/share/ROX-Filer/{src,build}
 # create a shellscript which is known in the PATH
  mkdir -p ${startdir}/pkg/usr/bin
  echo "#!/bin/sh" > "${startdir}/pkg/usr/bin/rox"
  echo "exec /usr/share/ROX-Filer/AppRun \"\$@\"" >> "${startdir}/pkg/usr/bin/rox"
  chmod a+x ${startdir}/pkg/usr/bin/rox
 # install some freedesktop.org compatibility
  install -D -m644 ${startdir}/src/${pkgname}.desktop \
    ${startdir}/pkg/usr/share/applications/${pkgname}.desktop
  install -D -m644 ${startdir}/src/${pkgname}.svg \
    ${startdir}/pkg/usr/share/pixmaps/${pkgname}.svg
   # finally we render a png as fallback for not svg aware menu applications
   # Attention: always make sure you check the dimensions of the source-svg,
   # you can read the dimensions via inkscapes export funktion
  rsvg -w 48 -h 38 -f png ${startdir}/src/${pkgname}.svg \
    ${startdir}/pkg/usr/share/pixmaps/${pkgname}.png
}
