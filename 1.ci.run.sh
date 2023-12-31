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
. ./2.6.lfs.env.sh
# ./3.1.wget.source.sh
ls -al $CMD_PATH/lfs/sources
./4.2.dir.struc.sh
./4.4.lfs.user.env.sh
. ./4.5.work.core.sh
./5.2.binutils-2.40.sh
./5.3.GCC-12.2.0.sh
./5.4.linux-6.1.11.sh
./5.5.glibc-2.37.sh
./5.6.GCC-12.2.0Libstdc++.sh
./6.2.m4-1.4.19.sh
./6.3.ncurses-6.4.sh
./6.4.bash-5.2.15.sh
./6.5.coreutils-9.1.sh
./6.6.diffutils-3.9.sh
./6.7.file-5.44.sh
./6.8.findutils-4.9.0.sh
./6.9.gawk-5.2.1.sh
./6.10.grep-3.8.sh
./6.11.gzip-1.12.sh
./6.12.make-4.4.sh
./6.13.patch-2.7.6.sh
./6.14.sed-4.9.sh
./6.15.tar-1.34.sh
./6.16.xz-5.4.1.sh
./6.17.binutils-2.40.sh
./6.18.GCC-12.2.0.sh
sudo ./7.2.chown.sh
sudo ./7.3.kernel.fs.sh
sudo ./7.5.mkdir.sh
sudo ./7.6.create.file.sh
sudo ./7.7.gettext-0.21.1.sh
sudo ./7.8.bison-3.8.2.sh
sudo ./7.9.perl-5.36.0.sh
sudo ./7.10.python-3.11.2.sh
sudo ./7.11.texinfo-7.0.2.sh
sudo ./7.12.util-linux-2.38.1.sh
sudo ./7.13.last.sh

./99.git.push.sh
