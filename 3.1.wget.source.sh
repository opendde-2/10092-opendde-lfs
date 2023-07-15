#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH
. ./2.6.lfs.env.sh
mkdir -pv $LFS/sources/
chmod -v a+wt $LFS/sources
wget --input-file=wget-list-sysv --continue --directory-prefix=$LFS/sources