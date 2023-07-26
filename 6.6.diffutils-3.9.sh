#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf diffutils-3.9.tar.xz
cd diffutils-3.9

./configure --prefix=/usr --host=$LFS_TGT

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf diffutils-3.9