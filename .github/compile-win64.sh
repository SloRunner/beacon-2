#!/bin/sh
PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g')
cd `pwd`/depends
sudo make -j2 HOST=x86_64-w64-mingw32
cd ..
sudo ./autogen.sh
sudo ./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
sudo make -j2
