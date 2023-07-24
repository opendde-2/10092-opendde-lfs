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
./4.4.lfs.user.env.sh
./4.5.work.core.sh

./99.git.push.sh
