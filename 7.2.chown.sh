#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH
export LFS=$CMD_PATH/lfs

chown -R root:root $LFS/{usr,lib,var,etc,bin,sbin,tools}

case $(uname -m) in
    x86_64)
        chown -R root:root $LFS/lib64
        ;;
esac