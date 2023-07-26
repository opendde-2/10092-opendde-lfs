#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf m4-1.4.19.tar.xz
cd m4-1.4.19

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf m4-1.4.19