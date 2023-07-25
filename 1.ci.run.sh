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
sudo ./5.3.GCC-13.1.0.sh
sudo ./5.4.linux-6.1.11.sh
sudo ./5.5.glibc-2.37.sh
sudo ./5.6.GCC-13.1.0Libstdc++.sh

./99.git.push.sh
