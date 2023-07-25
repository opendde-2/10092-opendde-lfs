#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

git config user.name github-actions
git config user.email github-actions@github.com

git lfs install

git lfs track "*.tar.gz"
git lfs track "*.tar.xz"

git add .gitattributes
git add .
rm -rf .git/gc.log
git commit -a -m "$(date)"
chmod +x *.sh

./2.2.version.check.sh
./2.6.lfs.env.sh
ls -al
cd $CMD_PATH
# ./3.1.wget.source.sh
sudo ./4.2.dir.struc.sh
sudo ./4.3.lfs.user.sh
sudo ./4.5.work.core.sh
sudo ./5.2.binutils-2.40.sh
sudo ./5.3.GCC-12.2.0.sh
sudo ./5.4.linux-6.1.11.sh
sudo ./5.5.glibc-2.37.sh
sudo ./5.6.GCC-12.2.0Libstdc++.sh
sudo ./6.2.m4-1.4.19.sh
sudo ./6.3.ncurses-6.4.sh
sudo ./6.4.bash-5.2.15.sh
sudo ./6.5.coreutils-9.1.sh
sudo ./6.6.diffutils-3.9.sh

./99.git.push.sh
