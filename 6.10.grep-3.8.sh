#!/usr/bin/env bash
cd $LFS/sources
tar -xf grep-3.8.tar.xz
cd grep-3.8

./configure --prefix=/usr   \
            --host=$LFS_TGT

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf grep-3.8