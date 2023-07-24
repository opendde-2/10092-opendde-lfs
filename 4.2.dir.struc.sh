#!/bin/bash

mkdir -pv $LFS/{lib,var,etc,bin,sbin,tools} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  sudo ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
    x86_64) 
        mkdir -pv $LFS/lib64
        ;;
esac