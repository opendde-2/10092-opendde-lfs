#!/usr/bin/env bash
export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

git config user.name github-actions
git config user.email github-actions@github.com

./2.2.version.check.sh

./3.1.wget.source.sh

./99.git.push.sh