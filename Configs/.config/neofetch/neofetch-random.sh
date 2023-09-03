#!/bin/sh

DIR="$HOME/.config/neofetch/Chara/Images"
PIC=$(ls $DIR/* | shuf -n 1)
neofetch --source $PIC

# Randomly choose a image from folder ~/.config/neofetch/Chara/Images