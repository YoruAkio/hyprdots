#!/bin/sh

# For my 32 disk (backup disk)
sudo mkdir /run/media/akio/Akio
sudo mount /dev/sda1 /run/media/akio/Akio

# For my windows partition (main disk)
sudo mkdir /run/media/akio/Windows
sudo mount /dev/sda4 /run/media/akio/Windows
