# $Id$
# Contributor: John Proctor <jproctor@prium.net>
# Maintainer: Kevin Piche <kevin@archlinux.org>

pkgname=sbcl
pkgver=1.0.15
pkgrel=1
pkgdesc="Steel Bank Common Lisp"
arch=(i686 x86_64)
license=('custom')
depends=('glibc')
[ "$CARCH" = "i686" ] && makedepends=('cmucl')
[ "$CARCH" = "x86_64" ] && makedepends=('sbcl')
source=("http://switch.dl.sourceforge.net/sourceforge/sbcl/${pkgname}-${pkgver}-source.tar.bz2" \
	"sbcl-default-sbcl-home.patch")
url="http://www.sbcl.org/"
md5sums=('d3d95ae10684a3cfc59e427ec533ee68' '053ef3ab65501635406134382df17278')

build() {
  cd ${startdir}/src/${pkgname}-${pkgver}
  patch -Np0 -i ../sbcl-default-sbcl-home.patch || return 1
  # Make a multi-threaded SBCL
  cat >customize-target-features.lisp <<EOF
(lambda (features)
  (flet ((enable (x) (pushnew x features))
         (disable (x) (setf features (remove x features))))
  (enable :sb-thread)))
EOF

if [ "${CARCH}" = "x86_64" ]; then
   sh make.sh
 else
   sh make.sh 'lisp -build'
fi
  mkdir -p ${startdir}/pkg/usr
  INSTALL_ROOT=${startdir}/pkg/usr sh install.sh

  # drop unwanted files
  find ${startdir}/pkg -name CVS -exec rm -rf {} \;
  find ${startdir}/pkg -name .cvsignore -exec rm -rf {} \;
  find ${startdir}/pkg -name Makefile -exec rm -rf {} \;

  # license
  install -D -m644 ${startdir}/src/${pkgname}-${pkgver}/COPYING \
                   ${startdir}/pkg/usr/share/licenses/${pkgname}/license.txt
}
