#!/bin/sh

cd pythondata-cpu-vexriscv
git fetch
git submodule sync
git checkout origin/master
git branch -D master
git checkout -b master
git submodule update --recursive
cd ..
git commit -s -m 'update pythondata-cpu-vexriscv' pythondata-cpu-vexriscv
