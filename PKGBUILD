# $Id$
# Maintainer: judd <jvinet@zeroflux.org>
pkgname=exim
pkgver=4.68
pkgrel=4
pkgdesc="A Message Transfer Agent"
arch=(i686 x86_64)
url="http://www.exim.org/"
license=('GPL')
backup=(etc/mail/aliases etc/mail/exim.conf \
        etc/logrotate.d/exim etc/conf.d/exim)
install=exim.install
depends=('db>=4.6' 'pcre' 'pam' 'tcp_wrappers' 'openssl')
makedepends=('sudo')
provides=('smtp-server')
conflicts=('smtp-server')
source=(ftp://ftp.csx.cam.ac.uk/pub/software/email/exim/exim4/exim-$pkgver.tar.bz2 aliases newaliases exim exim.logrotate exim.conf.d)
md5sums=('94c46a8bc24b3ad4ad892228449f378b'
         '4874006f0585253ddab027d441009757'
         'ea39f58bffc16f5e3bbe59dffcf09449'
         '9aed772e87223213e8da9ca5e7376869'
         'd788c26f86a9d72a0aebb3b849fe74f2'
         'b75fe4c6e960a59a25b5f51e8f61ba3a')

build() {
  # An exim user is required to build this
  if [ ! `egrep '^exim' /etc/passwd` ]; then
    echo "==> Adding user/group exim (temporarily)"
    sudo groupadd -g 79 exim
    sudo useradd -u 79 -g exim -d /var/spool/exim -s /bin/false exim
    cleanup=1
  else
    cleanup=0
  fi
  
  cd $startdir/src/$pkgname-$pkgver
  sed -i 's|tail -1|tail -n -1|g' scripts/Configure-config.h
  # Make some configuration changes
  sed 's|^BIN_DIRECTORY.*$|BIN_DIRECTORY=/usr/sbin|' src/EDITME | \
  sed 's|^CONFIGURE_FILE.*$|CONFIGURE_FILE=/etc/mail/exim.conf|' | \
  sed 's|^EXIM_USER.*$|EXIM_USER=exim|' | \
  sed 's|^COMPRESS_COMMAND.*$|COMPRESS_COMMAND=/bin/gzip|' | \
  sed 's|^ZCAT_COMMAND.*$|ZCAT_COMMAND=/bin/zcat|' | \
  sed 's|^CHOWN_COMMAND.*$|CHOWN_COMMAND=/bin/chown|' | \
  sed 's|^CHGRP_COMMAND.*$|CHGRP_COMMAND=/bin/chgrp|' | \
  sed 's|^EXIM_MONITOR.*$||' | \
  sed 's|^# MAX_NAMED_LIST.*$|MAX_NAMED_LIST=16|' | \
  sed 's|^# SUPPORT_MAILDIR.*$|SUPPORT_MAILDIR=yes|' | \
  sed 's|^# \(PID_FILE_PATH=/var\)/lock/exim.pid.*$|\1/run/exim.pid|' | \
  sed 's|^# AUTH_CRAM_MD5=yes$|AUTH_CRAM_MD5=yes|' | \
  sed 's|^# AUTH_PLAINTEXT=yes$|AUTH_PLAINTEXT=yes|' | \
  sed 's|^# AUTH_SPA=yes$|AUTH_SPA=yes|' | \
  sed 's|^# AUTH_DOVECOT=yes$|AUTH_DOVECOT=yes|' | \
  sed 's|^# SUPPORT_PAM=yes$|SUPPORT_PAM=yes|' | \
  sed 's|^# USE_TCP_WRAPPERS=yes$|USE_TCP_WRAPPERS=yes|' | \
  sed 's|^EXIM_GROUP.*$|EXIM_GROUP=exim|' | \
  sed 's|^# SUPPORT_TLS.*$|SUPPORT_TLS=yes|' | \
  sed 's|^# TLS_LIBS.*$|TLS_LIBS=-L/usr/lib -lssl -lcrypto|' | \
  sed 's|^# TLS_INCLUDE.*$|TLS_INCLUDE=-I/usr/include/openssl|' | \
  sed 's|^# WITH_CONTENT_SCAN.*$|WITH_CONTENT_SCAN=yes|' | \
  sed 's|^# WITH_OLD_DEMIME.*$|WITH_OLD_DEMIME=yes|' | \
  sed 's|^# \(LOG_FILE_PATH=/var/log/exim\)_%slog.*$|\1/%slog|' >Local/Makefile
  echo "EXTRALIBS_EXIM=-lwrap -lpam" >>Local/Makefile

  make -j1 || return 1
  install -D -m644 ../exim.logrotate $startdir/pkg/etc/logrotate.d/exim
  install -D -m644 ../exim.conf.d $startdir/pkg/etc/conf.d/exim
  install -D -m644 doc/exim.8 $startdir/pkg/usr/man/man8/exim.8
  mkdir -p $startdir/pkg/var/spool/exim $startdir/pkg/etc/mail \
    $startdir/pkg/var/log/exim $startdir/pkg/usr/lib
  chown root.exim $startdir/pkg/var/spool/exim $startdir/pkg/var/log/exim
  touch $startdir/pkg/var/log/exim/{mainlog,paniclog,rejectlog}
  chown exim.exim $startdir/pkg/var/log/exim/{mainlog,paniclog,rejectlog}
  chmod 640 $startdir/pkg/var/log/exim/{mainlog,paniclog,rejectlog}
  chmod 770 $startdir/pkg/var/spool/exim $startdir/pkg/var/log/exim
  cd scripts
  cp exim_install exim_install.old
  sed "s|/etc/aliases|$startdir/pkg/etc/aliases|g" exim_install.old >exim_install
if [ "$CARCH" = "x86_64" ]; then
      cd ../build-Linux-x86_64
  else cd ../build-Linux-i386 
fi
  inst_dest=$startdir/pkg/usr/sbin inst_conf=$startdir/pkg/etc/mail/exim.conf ../scripts/exim_install
  cd $startdir/src/exim-$pkgver/src
  sed "s|/etc/aliases|/etc/mail/aliases|g" configure.default | \
    sed "s|SYSTEM_ALIASES_FILE|/etc/mail/aliases|g" \
    >$startdir/pkg/etc/mail/exim.conf
  rm -f $startdir/pkg/etc/aliases
  cp $startdir/src/aliases $startdir/pkg/etc/mail
  cp $startdir/src/newaliases $startdir/pkg/usr/sbin
  cd $startdir/pkg/usr/sbin
  ln -s exim mailq
  ln -s exim rmail
  ln -s exim rsmtp
  ln -s exim runq
  ln -s exim sendmail
  # fhs compliancy
  ln -s ../sbin/exim $startdir/pkg/usr/lib/sendmail

  mkdir -p $startdir/pkg/etc/rc.d
  cp $startdir/src/exim $startdir/pkg/etc/rc.d


  if [ $cleanup -eq 1 ]; then
    echo "==> Removing user/group exim"
    sudo userdel exim
  fi
  return 0
}
