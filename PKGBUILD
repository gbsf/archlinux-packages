# $Id: PKGBUILD,v 1.59 2008/03/07 02:07:41 tobias Exp $
# Maintainer: tobias [ tobias at archlinux org ]

pkgname=gvim
_srcver=7.1
_patchlevel=267
pkgver=${_srcver}.${_patchlevel}
pkgrel=1
pkgdesc="the vim text editor with advanced features enabled, such as a gui mode"
arch=(i686 x86_64)
license=('custom:vim')
url="http://www.vim.org"
depends=("vim>=${pkgver}" 'perl' 'python' 'ruby' 'acl' 'libxt' 'gtk2' 'desktop-file-utils')
makedepends=('pkgconfig')
backup=(etc/gvimrc)
conflicts=('gvim-devel')
provides=('gvim-devel')
install=${pkgname}.install
source=(ftp://ftp.vim.org/pub/vim/unix/vim-${_srcver}.tar.bz2 \
        ftp://ftp.vim.org/pub/vim/extra/vim-${_srcver}-extra.tar.gz \
        ftp://ftp.vim.org/pub/vim/extra/vim-${_srcver}-lang.tar.gz \
        ${pkgname}.desktop fetch_patches.sh)
md5sums=('44c6b4914f38d6f9aa959640b89da329' '605cc7ae31bcc9d7864bb0bb6025f55d'\
         '144aa049ba70621acf4247f0459f3ee7' '2be104c0372dd6dae19cb7968c03cd4f'\
         'a792973dcd1d5d1103a1bb620e494b55')

build()
{
  # patch party
  # pull in patches from vim.org (or the src cache alternatively)
  . ${startdir}/fetch_patches.sh
  get_patches || return 1
  cd ${startdir}/src/vim$(echo ${_srcver} | sed "s/\.//")
   # define the place for the global (g)vimrc file (set to /etc/vimrc)
  sed -i 's|^.*\(#define SYS_.*VIMRC_FILE.*"\) .*$|\1|' src/feature.h
  ./configure --prefix=/usr --localstatedir=/var/lib/vim --mandir=/usr/share/man \
    --with-compiledby=ArchLinux --with-features=big \
    --with-x=yes --disable-gpm --with-x=yes --enable-gui=gtk2 \
    --with-global-runtime=/usr/share/vim --with-vim-name=gvim \
    --enable-multibyte --enable-cscope \
    --enable-perlinterp --enable-pythoninterp --enable-rubyinterp
  make || return 1
  # install everything first ...
  make VIMRCLOC=/etc DESTDIR=${startdir}/pkg VIMRTDIR= install

   # ... and clean up what vim already has for us
   # move the binary and fix the (g)* related symlinks
  find ${startdir}/pkg/usr/bin -type l 2> /dev/null | while read symlink; do
    rm ${symlink}
  done
  cd ${startdir}/pkg/usr/bin
  rm -f gvimtutor xxd
  ln -s gvim evim
  ln -s gvim egview
  ln -s gvim gview
  ln -s gvim gvimdiff
  ln -s gvim rgview
  ln -s gvim rgvim

   # delete the manpages/symlinks provided by vi package
  find ${startdir}/pkg/usr/share/man -type d -name 'man1' 2> /dev/null | \
   while read mandir; do
    cd ${mandir}
    rm -f *.1
    ln -s evi.1.gz evim.1.gz
    ln -s vi.1.gz egview.1.gz
    ln -s vi.1.gz gview.1.gz
    ln -s vi.1.gz gvim.1.gz
    ln -s vidiff.1.gz gvimdiff.1.gz
    ln -s vi.1.gz rgvim.1.gz
    ln -s vi.1.gz rgview.1.gz
  done

  install -Dm644 ${startdir}/pkg/usr/share/vim/gvimrc_example.vim \
    ${startdir}/pkg/etc/gvimrc
   # clean all settings and controls -  served by vi package
  rm -rf ${startdir}/pkg/usr/share/vim
   # freedesktop links
  install -D -m644 ${startdir}/src/${pkgname}.desktop \
    ${startdir}/pkg/usr/share/applications/gvim.desktop
  install -D -m644 ${startdir}/src/vim$(echo ${_srcver} | sed "s/\.//")/runtime/vim48x48.png \
    ${startdir}/pkg/usr/share/pixmaps/gvim.png
}
