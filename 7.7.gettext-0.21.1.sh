#!/usr/bin/env bash
echo ----------------------$0----------------------
. ./7.4.chroot.sh

cd /sources
tar -xf gettext-0.21.1.tar.xz
cd gettext-0.21.1

./configure --disable-shared

make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin

cd /sources
rm -rf ./gettext-0.21.1
