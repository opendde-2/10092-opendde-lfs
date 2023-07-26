#!/usr/bin/env bash
. ./7.4.chroot.sh

cd /source
tar -xf Python-3.11.2.tar.xz
cd Python-3.11.2

./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip

make && make install

cd /source
rm -rf ./Python-3.11.2