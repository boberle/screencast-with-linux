if [ "$1" == '' ];
then
   path="."
else
   path=$1
fi


for f in $path/*.mp4
do
   fn=$(basename -s .mp4 $f)
   #echo $fn-merged.mp4
   ffmpeg -i $fn.mp4 -i $fn.mp3 -vcodec copy -acodec copy $fn-merged.mp4
done

