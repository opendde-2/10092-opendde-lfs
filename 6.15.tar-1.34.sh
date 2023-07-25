#!/usr/bin/env bash
cd $LFS/sources
tar -xf tar-1.34.tar.xz
cd tar-1.34

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf tar-1.34