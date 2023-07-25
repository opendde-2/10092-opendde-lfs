#!/usr/bin/env bash
mkdir -pv $LFS/sources/
chmod -v a+wt $LFS/sources
wget --input-file=wget-list-sysv --continue --directory-prefix=$LFS/sources