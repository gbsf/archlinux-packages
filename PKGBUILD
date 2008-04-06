# $Id: PKGBUILD,v 1.4 2007/12/19 23:34:33 jeff Exp $
# Maintainer: Jeff Mickey <jeff@archlinux.org>
# Contributor: Jeffrey 'jf' Lim <jfs.world@gmail.com>

pkgname=wmii
pkgver=3.6
pkgrel=1
pkgdesc="Next generation WMI (Window Manager Improved 2)"
arch=('i686' 'x86_64') 
license=('MIT')
url="http://wmii.suckless.org/"
depends=('glibc' 'libx11' 'libixp>=0.4' 'dmenu')
source=(http://suckless.org/download/$pkgname-$pkgver.tar.gz wmii.desktop)
options=(!makeflags)

build()
{
  cd $startdir/src/$pkgname-$pkgver

  sed -i \
        -e "/^PREFIX/s|=.*|= ${startdir}/pkg/usr|" \
		-e "/^ETC/s|=.*|= ${startdir}/pkg/etc|" \
		-e "/^LIBDIR/s|=.*|= /usr/lib|" \
		config.mk || return 1

  make -j1 || return 1
  make -j1 DESTDIR=$startdir/pkg install

  mkdir -p $startdir/pkg/etc/X11/sessions
  install -m644 ../wmii.desktop $startdir/pkg/etc/X11/sessions/


  install -m644 -D ./LICENSE \
                    $startdir/pkg/usr/share/licenses/wmii/LICENSE

  # Rid paths of temporary install directory.
  sed -i -e "s|${startdir}/pkg||g" "${startdir}/pkg/usr/bin/wmiistartrc"
}

md5sums=('9d17a09871fada998b4d989d9318bbf5'
         '997d01cd35931b548fa7e6d1011ff6d4')
sha1sums=('48e24f84f60b9c6ce37f715a46bc32e35d2086f3'
          'd6e1bc22cd326be62084b7380a2fdee9fe6c422a')
