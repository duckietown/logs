
out=small-gifs

mkdir -p ${out}

for a in small/*.mp4; do

    base=$(basename ${a%.*})
    ffmpeg -y -i $a ${out}/${base}.gif

done
