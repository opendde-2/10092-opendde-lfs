#!/usr/bin/env bash
. ./7.4.chroot.sh

cd /sources
tar -xf bison-3.8.2.tar.xz
cd bison-3.8.2

./configure --prefix=/usr \
            --docdir=/usr/share/doc/bison-3.8.2

make && make install

cd /source
rm -rf ./bison-3.8.2