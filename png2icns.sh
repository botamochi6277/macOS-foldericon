#!/bin/bash
name=${1##*/}
name=${name%%.*}
names=("")

dir=$name.iconset
mkdir ${dir}
# x1024 x512 x256 x128 x64 x32 x16
size=(512 256 128 64 32 16)

cp ${1} $dir/icon_512x512@2x.png
num=`expr ${#size[*]} - 1`
for i in `seq 0 $num`; do
  names[i]=icon_${size[i]}x${size[i]}.png
  convert ${1} -resize ${size[i]}x ${dir}/${names[i]}
done

cp $dir/icon_512x512.png $dir/icon_256x256@2x.png
cp $dir/icon_256x256.png $dir/icon_128x128@2x.png
mv $dir/icon_64x64.png $dir/icon_32x32@2x.png
cp $dir/icon_32x32.png $dir/icon_16x16@2x.png

iconutil -c icns $dir
