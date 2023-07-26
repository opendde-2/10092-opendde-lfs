#!/bin/bash
echo ----------------------$0----------------------
export MAKEFLAGS="-j$[`grep 'core id' /proc/cpuinfo | wc -l`-2]"