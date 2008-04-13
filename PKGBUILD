# $Id: PKGBUILD,v 1.12 2008/01/26 15:58:23 damir Exp $
# Contributor: Tobias Powalowski <t.powa@gmx.de>
# Maintainer: damir <damir@archlinux.org>

pkgname=labplot
origname=LabPlot
pkgver=1.6.0.1
origver=1.6.0.1
pkgrel=2
pkgdesc="Plotting, Data analysis and visualisation"
arch=(i686 x86_64)
url="http://staff.mbi-berlin.de/gerlach/Linux/LabPlot/"
source=(http://dl.sourceforge.net/sourceforge/labplot/LabPlot-$pkgver.tar.gz)
# http://staff.mbi-berlin.de/gerlach/Linux/LabPlot/src/$origname-$pkgver.tar.gz)
depends=('kdelibs>=3.5.8' 'gsl' 'pstoedit' 'imagemagick>=6.4.0.2' 'qwtplot3d' 'fftw>=3.0.1-5' 'netcdf>=3.6.0.p1')
makedepends=('libxml++>=1.0.4-2')
options=("!libtool")
license=("GPL")

build() {
 cd $startdir/src/$origname-$origver
 ./configure --prefix=/opt/kde \
             --enable-mt \
             --disable-KexiDB # libkexidb in arch is in koffice and needs to be splitted to a separate pkg
 make || return 1
 make DESTDIR=$startdir/pkg install
}

md5sums=('50dd3033f35003d68d5a4e54336cd6c3')
