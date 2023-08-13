#!/usr/bin/bash

DIRNAME=$HOME/Pictures/Screenshots/
IMGNAME=Akio-Screenshot-$(date +%F_%T).png

# echo $DIRNAME/$filename
scrot -z -q 100 -f -e 'mv $f '
# scrot -e 'xclip -selection clipboard -t image/png -i $f'
