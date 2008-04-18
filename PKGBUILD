# $Id$
# Maintainer: eric <eric@archlinux.org>
# Contributor: Tom Newsom <Jeepster@gmx.co.uk>
#

pkgname=lha
pkgver=1.17
pkgrel=2
pkgdesc="lha is a compression and archive utility for LH-7 format archives"
depends=('glibc')
source=(http://www.infor.kanazawa-it.ac.jp/~ishii/lhaunix/linux/$pkgname\117.tar.gz)
url="http://www.infor.kanazawa-it.ac.jp/~ishii/lhaunix/"
md5sums=('7896188203cfaf5782d153c4dcd19f57')

build() {
  mkdir -p $startdir/pkg/usr/bin
  cd $startdir/src

	# NOTE: The upstream author does not distribute the source code unless
	# registering.  The binary is available w/o registration, so just to be
	# careful, we'll check the binary against the MD5 computed at the time
	# of this PKGBUILD.
	#
	echo "**> Verifying MD5 of included binary from within PKGBUILD::build()"
	sum=`md5sum lha | awk '{ print $1 }'`
	echo "**> Expected MD5: '9096c827e93420de99035e7706c741b3'"
	echo "**> Computed MD5: '$sum'"
	if [ "$sum" = "9096c827e93420de99035e7706c741b3" ]; then
		echo "**> MD5 check passed: completing build"
	  install -D -m755 lha $startdir/pkg/usr/bin/lha
	else
		echo "**> MD5 check failed: please submit a bug to the Arch pkg maintainer"
		return 1
	fi
}
# vim: ts=2 sw=2 et ft=sh
