#!/bin/bash

# xwininfo gives you something like this:
#  Absolute upper-left X:  146
#  Absolute upper-left Y:  149
#  Relative upper-left X:  1    --> this is decoration
#  Relative upper-left Y:  26   --> this is decoration
#  Width: 1297
#  Height: 770

# source: http://unix.stackexchange.com/questions/14159/how-do-i-find-the-window-dimensions-and-position-accurately-including-decoration
x=0
y=0
w=0
h=0
b=0  # b for border
t=0  # t for title (or top)
#xwininfo -id $(xdotool getactivewindow) |
echo "Click on the window you want to record..."
eval $( xwininfo |
  sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p" \
         -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p" \
         -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
         -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p" \
         -e "s/^ \+Relative upper-left X: \+\([0-9]\+\).*/b=\1/p" \
         -e "s/^ \+Relative upper-left Y: \+\([0-9]\+\).*/t=\1/p" )
let x=$x-$b
let y=$y-$t
let w=$w+2*$b
let h=$h+$t+$b

echo ${w}x${h}+${x}+${y}

