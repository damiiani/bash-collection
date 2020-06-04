#!/usr/bin/sh

packages=$(pacman -Qdtq)

sudo pacman -Syu
yay --aur -Syu

if [ "$packages" != "" ]; then
    sudo pacman -Rcns $packages
else
    echo "No packages to clean"
fi
