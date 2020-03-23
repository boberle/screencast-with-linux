for f in $1/*.mp4:
do
   fn=$(basename -s .mp4 $f)
   ffmpeg -i $fn.mp4 -i $fn.mp3 -vcodec copy -acodec copy $fn-merged.mp4
done

