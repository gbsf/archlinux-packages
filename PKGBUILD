# $Id: PKGBUILD,v 1.7 2007/06/02 11:32:41 jgc Exp $
# Maintainer: dorphell <dorphell@archlinux.org>
# Committer: Judd Vinet <jvinet@zeroflux.org>

pkgname=docbook-xml
pkgver=4.5
pkgrel=1
pkgdesc="A widely used XML scheme for writing documentation and help"
arch=(i686 x86_64)
url="http://scrollkeeper.sourceforge.net/docbook.shtml"
depends=('libxml2')
makedepends=('unzip')
install=docbook-xml.install
source=(http://www.docbook.org/xml/4.5/docbook-xml-4.5.zip
        http://www.docbook.org/xml/4.4/docbook-xml-4.4.zip
	http://www.docbook.org/xml/4.3/docbook-xml-4.3.zip
	http://www.docbook.org/xml/4.2/docbook-xml-4.2.zip
	http://www.docbook.org/xml/4.1.2/docbkx412.zip)
noextract=('docbook-xml-4.5.zip' 'docbook-xml-4.4.zip' 'docbook-xml-4.3.zip' 'docbook-xml-4.2.zip' 'docbkx412.zip')
md5sums=('03083e288e87a7e829e437358da7ef9e'
         'cbb04e9a700955d88c50962ef22c1634'
         'ab200202b9e136a144db1e0864c45074'
         '73fe50dfe74ca631c1602f558ed8961f'
         '900d7609fb7e6d78901b357e4acfbc17')

build() {
  for ver in 4.2 4.3 4.4 4.5; do
    mkdir docbook-xml-${ver}
    pushd docbook-xml-${ver}
    unzip ${startdir}/src/docbook-xml-${ver}.zip
    mkdir -p ${startdir}/pkg/usr/share/xml/docbook/xml-dtd-${ver}
    cp -af docbook.cat *.dtd ent/ *.mod \
              ${startdir}/pkg/usr/share/xml/docbook/xml-dtd-${ver}/
    popd
  done
  mkdir docbook-xml-4.1.2
  pushd docbook-xml-4.1.2
  unzip ${startdir}/src/docbkx412.zip
  mkdir -p ${startdir}/pkg/usr/share/xml/docbook/xml-dtd-4.1.2
  cp -af docbook.cat *.dtd ent/ *.mod \
            ${startdir}/pkg/usr/share/xml/docbook/xml-dtd-4.1.2/
  popd

  mkdir -p ${startdir}/pkg/etc/xml
  xmlcatalog --noout --create ${startdir}/pkg/etc/xml/docbook-xml

  # V4.1.2
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML CALS Table Model V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML CALS Table Model V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/soextblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Information Pool V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/dbpoolx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Document Hierarchy V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/dbhierx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Additional General Entities V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/dbgenent.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Notations V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/dbnotnx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Character Entities V4.1.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.1.2/dbcentx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/4.1.2" \
    "file:///usr/share/xml/docbook/xml-dtd-4.1.2" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/4.1.2" \
    "file:///usr/share/xml/docbook/xml-dtd-4.1.2" \
    ${startdir}/pkg/etc/xml/docbook-xml

  # V4.2
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook CALS Table Model V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/soextblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Information Pool V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/dbpoolx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Document Hierarchy V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/dbhierx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Additional General Entities V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/dbgenent.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Notations V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/dbnotnx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Character Entities V4.2//EN" \
    "http://www.oasis-open.org/docbook/xml/4.2/dbcentx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/4.2" \
    "file:///usr/share/xml/docbook/xml-dtd-4.2" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/4.2" \
    "file:///usr/share/xml/docbook/xml-dtd-4.2" \
    ${startdir}/pkg/etc/xml/docbook-xml

  # V4.3
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/docbookx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook CALS Table Model V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/soextblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Information Pool V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/dbpoolx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Document Hierarchy V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/dbhierx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Additional General Entities V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/dbgenent.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Notations V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/dbnotnx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Character Entities V4.3//EN" \
    "http://www.oasis-open.org/docbook/xml/4.3/dbcentx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/4.3" \
    "file:///usr/share/xml/docbook/xml-dtd-4.3" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/4.3" \
    "file:///usr/share/xml/docbook/xml-dtd-4.3" \
    ${startdir}/pkg/etc/xml/docbook-xml

  # V4.4
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/docbookx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook CALS Table Model V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML HTML Tables V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/htmltblx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/soextblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Information Pool V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/dbpoolx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook Document Hierarchy V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/dbhierx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Additional General Entities V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/dbgenent.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Notations V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/dbnotnx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook Character Entities V4.4//EN" \
    "http://www.oasis-open.org/docbook/xml/4.4/dbcentx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/4.4" \
    "file:///usr/share/xml/docbook/xml-dtd-4.4" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/4.4" \
    "file:///usr/share/xml/docbook/xml-dtd-4.4" \
    ${startdir}/pkg/etc/xml/docbook-xml

  # V4.5
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V4.5//EN" \
    "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML CALS Table Model V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/calstblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/soextblx.dtd" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Information Pool V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/dbpoolx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Document Hierarchy V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/dbhierx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML HTML Tables V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/htmltblx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Notations V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/dbnotnx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Character Entities V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/dbcentx.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Additional General Entities V4.5//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/dbgenent.mod" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    ${startdir}/pkg/etc/xml/docbook-xml
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    ${startdir}/pkg/etc/xml/docbook-xml
}
