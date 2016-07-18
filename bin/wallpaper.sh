#!/usr/bin/bash

imgdir=$HOME/Pictures/Wallpapers

image=$(ls $imgdir | shuf -n 1)

feh --bg-scale "$imgdir/$image"
