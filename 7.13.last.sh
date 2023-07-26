#!/usr/bin/env bash
echo ----------------------$0----------------------
. ./7.4.chroot.sh

rm -rf /usr/share/{info,man,doc}/*
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /tools