#!/bin/sh
HOME=/home/zhangbin/zbhome/SRS/ffmpeg
DST=$HOME/ffout
BUILD=$HOME/ffbuild

echo "#######################"
echo "HOME IS  $HOME"
echo "DST is $DST"
echo "BUILD is $BUILD"
echo "#######################"


echo "##########SETENV FOR DEP yasm######"
export PATH=$DST/bin:$PATH:/bin
export LD_LIBRARY_PATH=$DST/lib
export PKG_CONFIG_PATH=$XDST/lib/pkgconfig:$PKG_CONFIG_PATH
export C_INCLUDE_PATH=$DST/include
export LIBRARY_PATH=$DST/lib



echo "PATH IS $PATH"
echo "LD_LIBRARY_PATH IS $LD_LIBRARY_PATH"
echo "C_INCLUDE_PATH IS $C_INCLUDE_PATH "
echo "LIBRARY_PATH IS $LIBRARY_PATH "
echo "##########dep yasm done##########"


