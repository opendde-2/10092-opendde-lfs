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

./2.2.version.check.sh
# ./2.6.lfs.env.sh
# ./3.1.wget.source.sh
# ./4.2.dir.struc.sh

./99.git.push.sh
