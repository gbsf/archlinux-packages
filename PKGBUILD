# Contributor: Mildred <mildred593 at online dot fr>
# kate: hl Bash;

pkgname=claws-mail-extra-plugins
pkgver=3.3.1
pkgrel=3
pkgdesc="Extra plugins for claws-mail"
url="http://www.claws-mail.org/plugins.php?branch=EXT"
license=('GPL3')
arch=('i686' 'x86_64')
depends=("claws-mail>=3.3.1" 'libxml2' 'curl' 'libgtkhtml' 'gpgme' 'libetpan' 'ghostscript' 'poppler-glib>=0.8.0' 'libnotify')
makedepends=('make' 'bc' 'perl>=5.10.0-3')
conflicts=('claws-gtkhtml2_viewer' 'claws-mail-acpinotifier-plugin' 'sylpheed-claws-gtkhtml2-plugin' 'sylpheed-claws-rssyl-plugin' 'sylpheed-claws-extra-plugins')
replaces=('sylpheed-claws-extra-plugins')
options=(!LIBTOOL)
source=("http://downloads.sourceforge.net/sourceforge/sylpheed-claws/claws-mail-extra-plugins-$pkgver.tar.bz2")
md5sums=('ddd2e136308ca98838352e4010ad746b')

build() {
    # remove an unwanted plugin nobody needs. it would pull ytnef dependency
    rm -rf $startdir/src/claws-mail-extra-plugins-$pkgver/tnef_parse*

    cd "$startdir/src/claws-mail-extra-plugins-$pkgver"
    for dir in *; do
        # Continue if it is not a directory or the synce plugin
        [ ! -d "$dir" ] && continue
        echo "$dir" | grep synce >/dev/null 2>/dev/null && continue
        # Else, compile
        cd "$dir"
        [ -e "$configured_file" ] || \
            ./configure --prefix=/usr --disable-static || return 1
        touch "arch-configured"
        make || return 1
        make DESTDIR=$startdir/pkg install || return 1
        cd ..
    done
}
