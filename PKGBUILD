# $Id: PKGBUILD,v 1.24 2008/03/19 18:30:23 damir Exp $
# Maintainer: damir <damir@archlinux.org>
# Contributor: Ben <contrasutra@myrealbox.com>

pkgname=elinks
pkgver=0.11.4rc1
pkgrel=1
pkgdesc="An advanced and well-established feature-rich text mode web browser."
arch=("i686" "x86_64")
url="http://elinks.or.cz"
license=('GPL')
depends=('bzip2' 'expat>=2.0' 'gpm' 'openssl' 'zlib' 'lua>=5.1.1' 'libidn' 'spidermonkey')
source=("$url/download/${pkgname}-${pkgver}.tar.bz2"
        "${pkgname}.desktop")


build() {
  cd ${startdir}/src/${pkgname}-${pkgver}

 # fix 0.11.0 /config.charset not found:
 #  sed -i 's|$(srcdir)/config.charset|$(srcdir)config.charset|g' \
 #        ${startdir}/src/${pkgname}-${pkgver}/src/intl/gettext/Makefile || return 1

  ./configure --prefix=/usr --mandir=/usr/share/man \
              --sysconfdir=/etc \
              --enable-smb --without-x --enable-cgi \
              --enable-leds --enable-256-colors --enable-html-highlight
 # info: 
 # configure: WARNING: Forcing --disable-smb because of vulnerability CVE-2006-5925.
 # If you want to use SMB, please wait for ELinks 0.12.0 or see bug 844.

  make || return 1
  make DESTDIR=${startdir}/pkg install || return 1
  rm -f ${startdir}/pkg/usr/share/locale/locale.alias

  # make it nice:
  install -D -m644 ${startdir}/src/${pkgname}.desktop \
                   ${startdir}/pkg/usr/share/applications/${pkgname}.desktop
}

