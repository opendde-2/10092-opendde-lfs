#!/bin/bash
export MAKEFLAGS="-j$[`grep 'core id' /proc/cpuinfo | wc -l`-2]"