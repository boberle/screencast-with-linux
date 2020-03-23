use strict;
use warnings FATAL=>'all';

my $counter = 1;
while (1) {
   printf "--------\nCOUNTER: %02d. Press Enter to start recording.\n"
   ."To stop the recording, just press Control-C...\n"
   ."To quit, use Control-C right now.\n", $counter;
   <STDIN>;
   my $cmd = sprintf "ffmpeg -framerate 15 -video_size $1x$2 "
      ."-f x11grab -i :0.0+$3,$4 "
      ."-f alsa -ac 2 -i pulse "
      ."-map 0:0 -vcodec libx264 -qp 0 -preset ultrafast %02d.mp4 "
      ."-map 1:0 -acodec libmp3lame %02d.mp3", $counter, $counter;
   print "Running command $cmd...\n";
   system($cmd) and print "$0: *** can't run the command ***\n";
   $counter++;
}

