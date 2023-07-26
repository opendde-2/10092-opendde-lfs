#!/usr/bin/env bash
. ./7.4.chroot.sh

cd /source
tar -xf texinfo-7.0.2.tar.xz
cd texinfo-7.0.2

./configure --prefix=/usr

make && make install

cd /source
rm -rf ./texinfo-7.0.2