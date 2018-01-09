
mkdir -p small

for a in videos/*.mp4; do

    base=$(basename ${a%.*})
    ffmpeg -y -i $a -s 64x48 -vf "setpts=0.2*PTS" small/$base.mp4

done
