#!/bin/sh
mkdir -p files
for a in `ls --ignore=*.sh -F | grep -v /`; do
    ffmpeg -y -i $a -vf setpts=PTS/$1 -af atempo=$1 files/$a
    echo $a
done
