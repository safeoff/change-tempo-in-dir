#!/bin/sh
mkdir -p files
for a in `ls *[!.sh] -F | grep -v /`; do
    ffmpeg -y -i $a -vf setpts=PTS/$1 -af atempo=$1 files/$a -loglevel warning
    echo $a
done
