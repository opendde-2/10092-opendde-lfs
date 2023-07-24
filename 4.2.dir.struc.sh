#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

. ./2.6.lfs.env.sh
mkdir -pv $LFS/{lib,var,etc,bin,sbin,tools} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
   ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
    x86_64) 
        mkdir -pv $LFS/lib64
        ;;
esac
