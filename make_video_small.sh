#!/bin/bash

set -e
set -x

in=video
out=video_small

mkdir -p ${out} 

for a in ${in}/*.video.mp4; do

    basename=$(basename ${a})
    base=${basename/.video.mp4/}
    # try: http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html
    ffmpeg -y -nostats -loglevel error -hide_banner -i $a -s 64x48 -vf "setpts=0.2*PTS" -b:v 0.01M  ${out}/${base}.video_small.gif
    ffmpeg -y -nostats -loglevel error -hide_banner -i $a -s 64x48 -vf "setpts=0.2*PTS" -b:v 0.01M  ${out}/${base}.video_small.webm

done
