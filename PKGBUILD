# $Id$
# Maintainer: Paul Mattal <paul@archlinux.org>
pkgname=mailman
pkgver=2.1.9
pkgrel=3
pkgdesc="Mailing list manager with built in web access"
arch=(i686 x86_64)
url="http://www.list.org/"
depends=('python' 'apache' 'smtp-server')
# 'Defaults.py' should not be changed by users; 'mm_cfg.py' should instead.
backup=('home/mailman/Mailman/mm_cfg.py')
install=$pkgname.install
source=(http://ftp.gnu.org/gnu/$pkgname/$pkgname-$pkgver.tgz \
	rc.mailman)
md5sums=('dd51472470f9eafb04f64da372444835' 'a617b32a2564fce2641a7c7b660ef6cd')

build() {
  cd $startdir/src/$pkgname-$pkgver || return 1
  
  # the mailman user and group are required to build
  if [ ! `egrep '^mailman' /etc/passwd` ]; then
    msg "Adding user/group mailman (temporarily)"
    groupadd -g 80 mailman || return 1
    sleep 2
    useradd -u 80 -g mailman -d /home/mailman -s /bin/false mailman \
    	|| return 1
    mkdir -p /home/mailman || return 1
    chown mailman.mailman /home/mailman || return 1
    chmod a+rx,g+ws /home/mailman || return 1
    cleanup=1
  else
    cleanup=0
  fi

  # set permissions and ownership on the target directory
  mkdir -p $startdir/pkg/home/mailman || return 1
  chown mailman.mailman $startdir/pkg/home/mailman || return 1
  chmod a+rx,g+ws $startdir/pkg/home/mailman || return 1

  # configure and build
  ./configure --without-permcheck --prefix=/home/mailman || return 1
  make || return 1
  make DESTDIR=$startdir/pkg prefix=/home/mailman var_prefix=/home/mailman \
  	install || return 1

  # install the launch script
  install -D -m755 $startdir/src/rc.mailman $startdir/pkg/etc/rc.d/mailman \
  	|| return 1

  if [ $cleanup -eq 1 ]; then
    msg "Removing user/group mailman"
    userdel mailman
    rmdir /home/mailman
  fi
}
