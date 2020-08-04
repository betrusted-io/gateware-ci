#!/bin/sh

cd gateware
git fetch
git submodule sync
git checkout origin/master
git branch -D master
git checkout -b master
git submodule update --recursive
cd ..
git commit -s -m 'update gateware' gateware
