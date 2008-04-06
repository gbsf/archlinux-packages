# $Id: PKGBUILD,v 1.5 2007/04/22 17:31:23 jgc Exp $ 
# Maintainer: Jan de Groot <jgc@archlinux.org>
# Contributor: Kritoke <kritoke@nospam.gmail.com>

pkgname=gnome-blog
pkgver=0.9.1
pkgrel=1
pkgdesc="A gnome application that allows you to post entries to many different blog formats."
arch=(i686 x86_64)
license=('GPL')
depends=('gnome-python')
makedepends=('pkgconfig' 'perlxml')
install=gnome-blog.install
url="http://www.gnome.org/~seth/gnome-blog/"
source=(http://ftp.gnome.org/pub/GNOME/sources/${pkgname}/0.9/${pkgname}-${pkgver}.tar.bz2)
md5sums=('5eb8a04aadf33554a2087589a0025ecc')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  ./configure --prefix=/usr --sysconfdir=/etc \
              --libexecdir=/usr/lib/gnome-blog \
              --localstatedir=/var
  make || return 1
  make DESTDIR=${startdir}/pkg install

  mkdir -p ${startdir}/pkg/usr/share/gconf/schemas
  gconf-merge-schema ${startdir}/pkg/usr/share/gconf/schemas/${pkgname}.schemas ${startdir}/pkg/etc/gconf/schemas/*.schemas
  rm -f ${startdir}/pkg/etc/gconf/schemas/*.schemas
}
