# $Id$
# Maintainer: damir <damir@archlinux.org>

pkgname=phpbb
pkgver=2.0.23
pkgrel=1
pkgdesc="A high powered, fully scalable, and highly customisable open-source bbs package."
arch=("i686" "x86_64")
url="http://www.phpbb.com"
license=('GPL')
depends=('php' 'mysql')
backup=(home/httpd/html/phpbb/.htaccess \
        home/httpd/html/phpbb/config.php)
#source=(http://puzzle.dl.sourceforge.net/sourceforge/$pkgname/phpBB-$pkgver.tar.bz2)
#source=(http://www.phpbb.com/files/releases/phpBB-$pkgver.tar.gz)
source=(http://downloads.sourceforge.net/phpbb/phpBB-$pkgver.tar.gz)
md5sums=('a3f6c899a08f41b7c892d8473ad277cc')

build() {
  instdir=$startdir/pkg/home/httpd/html/phpbb
  mkdir -p $instdir
  cd $instdir
  cp -ra $startdir/src/phpBB2/* .
  echo "deny from all" > .htaccess
}


