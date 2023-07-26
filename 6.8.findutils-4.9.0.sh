#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf findutils-4.9.0.tar.xz
cd findutils-4.9.0

./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf findutils-4.9.0