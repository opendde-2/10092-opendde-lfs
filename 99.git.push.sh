#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

git remote set-url origin git@github.com:opendde/10092-opendde-lfs.git

git checkout -b build_$GITHUB_RUN_NUMBER
git add .
git commit -a -m "add by ci"
git push origin HEAD