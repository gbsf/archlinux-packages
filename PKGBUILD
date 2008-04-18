# $Id$
# Maintainer: Tobias Powalowski <tpowa@archlinux.org>

pkgname=klibc-kbd
pkgver=1.15.20080312
pkgrel=5
pkgdesc="Keytable files and keyboard utilities"
arch=('i686' 'x86_64')
url="ftp://ftp.altlinux.org/pub/people/legion/kbd/"
license=('GPL')
groups=('base')
depends=('klibc>=1.5-4' 'kbd')
source=(ftp://ftp.archlinux.org/other/kbd/kbd-$pkgver.tar.gz
        #ftp://ftp.altlinux.org/pub/people/legion/kbd/kbd-${pkgver}.tar.gz
        no-isatty.patch
        no-exit.patch
        keymap_install
        keymap_hook)
md5sums=('709b087bb9d6c073bade70eda2da7770'
         '53e9612ac5fc1b23601f793410742ed3'
         '8c1bec330e8c98355502ac861561667d'
         '735d7268f567deee4db3bed951a8303a'
         '85457e44dfd7046224e87f0add8da4b2')

build() {
  cd ${startdir}/src
  #cd ${startdir}/src/kbd-${pkgver}
  patch -Np1 -i ../no-isatty.patch
  patch -Np1 -i ../no-exit.patch

  aclocal
  autoconf
  automake --add-missing
  ./configure --datadir=/share/kbd --enable-klibc

  cd src/
  make kbd_mode loadkeys setfont || return 1

  install -D loadkeys ${startdir}/pkg/lib/initcpio/kbd/loadkeys
  install -D kbd_mode ${startdir}/pkg/lib/initcpio/kbd/kbd_mode
  install -D setfont ${startdir}/pkg/lib/initcpio/kbd/setfont
  # install hook
  install -Dm644 ${startdir}/src/keymap_hook ${startdir}/pkg/lib/initcpio/hooks/keymap
  install -Dm644 ${startdir}/src/keymap_install ${startdir}/pkg/lib/initcpio/install/keymap
}
