#!/usr/bin/env bash
echo ----------------------$0----------------------
. ./7.4.chroot.sh

cd /source
tar -xf util-linux-2.38.1.tar.xz
cd util-linux-2.38.1
mkdir -pv /var/lib/hwclock

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime    \
            --libdir=/usr/lib    \
            --docdir=/usr/share/doc/util-linux-2.38.1 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            runstatedir=/run

make && make install

cd /source
rm -rf ./util-linux-2.38.1