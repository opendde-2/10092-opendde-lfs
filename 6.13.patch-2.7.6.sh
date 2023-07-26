#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf patch-2.7.6