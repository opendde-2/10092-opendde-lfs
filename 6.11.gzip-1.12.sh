#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf gzip-1.12.tar.xz
cd gzip-1.12

./configure --prefix=/usr --host=$LFS_TGT

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf gzip-1.12