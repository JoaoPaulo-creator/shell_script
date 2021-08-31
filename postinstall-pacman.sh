#!/bin/bash

sudo pacman -Syyu --noconfirm

sudo pacman -S brave-browser gedit neofetch --noconfirm
sudo pamac update && sudo pamac upgrade --no-confirm

echo "Finished"

