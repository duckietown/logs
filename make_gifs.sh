
out=small-gifs

mkdir -p ${out} small-webm

for a in small/*.mp4; do

    base=$(basename ${a%.*})
    # try: http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html
    ffmpeg -y -i $a -b:v 0.01M  ${out}/${base}.gif
    ffmpeg -y -i $a -b:v 0.01M  small-webm/${base}.webm

done
