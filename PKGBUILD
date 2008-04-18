# $Id$
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=man-pages
pkgver=2.79
pkgrel=1
pkgdesc="Linux man pages"
arch=(i686 x86_64)
license=('GPL')
url="http://www.win.tue.nl/~aeb/linux/man"
groups=('base')
depends=()
source=(http://www.kernel.org/pub/linux/docs/man-pages/$pkgname-$pkgver.tar.gz)
md5sums=('1ab8989d32bfb15e1a4acbbea9c4a695')

build() {
  cd $startdir/src/$pkgname-$pkgver
  make prefix=$startdir/pkg/usr install

  cd $startdir/pkg/usr/share/man
  # these are included in coreutils
  rm -f man1/{chgrp,chmod,chown,cp,dir,dd}.1
  rm -f man1/{df,dircolors,du,install,ln,ls}.1
  rm -f man1/{mkdir,mkfifo,mknod,mv,rm,rmdir}.1
  rm -f man1/{touch,vdir}.1
  # this is included in shadow
  rm -f man5/passwd.5
  rm -f man3/getspnam.3
  # this is included in diffutils
  rm -f man1/diff.1
  # this is included in xf86-input-mouse
  rm -f man4/mouse.4
  # these are included in module-init-tools
  rm -f man2/{create_module,delete_module,get_kernel_syms}.2
  rm -f man2/{init_module,query_module}.2
}
