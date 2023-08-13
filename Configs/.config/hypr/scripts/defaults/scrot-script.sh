#!/usr/bin/bash

DIRNAME=$HOME/Pictures/Screenshots
[ ! -d $DIRNAME ] && mkdir -p $DIRNAME

filename=Akio-Screenshots-$(date +%F_%T)
imagepath=$DIRNAME/$filename.png

function selection(){
	scrot -z -f -q 100 -s "$imagepath" -e 'xclip -selection clipboard -t image/png -i $f' -e "wl-copy < $f"
    dunstify -a "Screenshots Utils" -i "$imagepath" "Screenshots taken, saved on Path ~/Picture/Screenshots" -r 2000
}

function full_screen(){
	scrot -z -f -q 100 -s "$imagepath" -e 'xclip -selection clipboard -t image/png -i $f' -e "wl-copy < $f"
	dunstify -a "Screenshots Utils" -i "$imagepath" "Screenshots taken, saved on Path ~/Picture/Screenshots" -r 2000
}

function delay(){
	scrot -d 3 -z -f -q 100 -s "$imagepath" -e 'xclip -selection clipboard -t image/png -i $f' -e "wl-copy < $f"
	dunstify -a "Screenshots Utils" -i "$imagepath" "Screenshots taken, saved on Path ~/Picture/Screenshots" -r 2000
}

function window(){
    scrot -u -z -f -q 100 -s "$imagepath" -e 'xclip -selection clipboard -t image/png -i $f' -e "wl-copy < $f"
    dunstify -a "Screenshots Utils" -i "$imagepath" "Screenshots taken, saved on Path ~/Picture/Screenshots" -r 2000
}

doc() {
    echo "Usage:
    screenshot [Options]

    Options:
        s       Screenshots the selected area
        f       Screenshots the focussed screen
        d       Takes a screenshot of the selected area after 3 second
        w       Screenshots the focussed window"
}

case $1 in 
    s) selection			;;
    f) full_screen			;;
    d) delay				;;
    w) window				;;
    *) doc					;;
esac
