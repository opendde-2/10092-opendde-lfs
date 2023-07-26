#!/usr/bin/env bash
echo ----------------------$0----------------------
cd $LFS/sources
tar -xf binutils-2.40.tar.xz
cd binutils-2.40
sed '6009s/$add_dir//' -i ltmain.sh
mkdir -v build
cd build

../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd

make && make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.{a,la}

cd $LFS/sources
rm -rf ./binutils-2.40