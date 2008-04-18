# $Id$
# Maintainer: Tom Killian <tom@archlinux.org>

# N.B. Slimserver does not work with YAML::Syck > 0.64, so I'm bundling it to avoid
# conflict with the current version in [extra]. TK 20070722

pkgname=slimserver
pkgver=v6.5.4
pkgrel=2
pkgdesc="Powerful streaming audio server from Slim Devices"
depends=('perl-compress-zlib' 'perl-dbd-mysql' 'perl-html-parser'
	 'perl-digest-sha1' 'perl-template-toolkit' 'perlxml')
source=(http://www.slimdevices.com/downloads/SlimServer_$pkgver/SlimServer_$pkgver.no-cpan-arch.tar.gz
	http://www.cpan.org/authors/id/A/AU/AUDREYT/YAML-Syck-0.64.tar.gz
        slimserver.rc slimserver.conf.d)
conflicts=('perl-yaml-syck')
provides=('perl-yaml-syck')
url="http://www.slimdevices.com/pi_features.html"
license=('GPL')
arch=('i686' 'x86_64')
install=slimserver.install
backup=('home/slimserver/.slimserver.pref')

build() {
  # Building Slimserver
  cd $startdir/src/SlimServer_$pkgver
  mkdir -p $startdir/pkg/home/slimserver
  cp -a * $startdir/pkg/home/slimserver
  install -D -m755 ../slimserver.rc $startdir/pkg/etc/rc.d/slimserver
  install -D -m644 ../slimserver.conf.d $startdir/pkg/etc/conf.d/slimserver
  
  # Building YAML::Syck
  cd  $startdir/src/YAML-Syck-0.64
  # install module in vendor directories.
  PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor || return 1
  make  || return 1
  make install DESTDIR=${startdir}/pkg || return 1
  
  # remove perllocal.pod and .packlist
  find ${startdir}/pkg -name perllocal.pod -delete
  find ${startdir}/pkg -name .packlist -delete

}
md5sums=('6ffa0002b47dc6a77649289a3ad7f8b9'
         '51054b5da582e381158f10276f82ae15'
         '27242f535763f2be0c320b6b826111a3'
         '58b4308a621d314602d350891c16041f')
