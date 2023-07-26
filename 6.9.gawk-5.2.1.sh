#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf gawk-5.2.1.tar.xz
cd gawk-5.2.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make && make DESTDIR=$LFS install

cd $LFS/sources
rm -rf gawk-5.2.1