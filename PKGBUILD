# $Id$
# Maintainer: Travis Willard <travisw@wmpub.ca>
# Contributor: Gergely Tamas <dice@mfa.kfki.hu>

pkgname=arj
pkgver=3.10.22
pkgrel=4
pkgdesc="Free and portable clone of the ARJ archiver"
url="http://arj.sourceforge.net/"
arch=('i686')
license=("GPL")
depends=('glibc')
makedepends=('autoconf')
source=(http://dl.sourceforge.net/sourceforge/arj/$pkgname-$pkgver.tar.gz \
        001_arches_align.patch 002_no_remove_static_const.patch 003_64_bit_clean.patch)

build() {
  cd $startdir/src/$pkgname-$pkgver

  # Add gentoo patches
  patch -Np1 -i $startdir/src/001_arches_align.patch || return 1
  patch -Np1 -i $startdir/src/002_no_remove_static_const.patch || return 1
  patch -Np1 -i $startdir/src/003_64_bit_clean.patch || return 1

  # Build!
  cd gnu
  autoconf
  ./configure --prefix=/usr
  cd ..
  make prepare || return 1
  make || return 1

  # Install!
  make DESTDIR=$startdir/pkg install
}
md5sums=('f263bf3cf6d42a8b7e85b4fb514336d3'
	  '550bc972d825036f17f202a2b11b35c2'
	  '395dfa8cc500ffae648777f8f241be88'
	  '56b3cf96ec485b0d824761457417fcc0')
sha1sums=('e8470f480e9eee14906e5485a8898e5c24738c8b'
	  '7f8904f8c89bacbbeec8c431d627efbb8da2f259'
	  '919a3c02a1e039803502c21175d69f7703d13026'
	  'd506338e34b40ef5cac6ec14c858fd651a354aaf')
