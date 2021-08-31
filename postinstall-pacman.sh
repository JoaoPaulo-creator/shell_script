#!/bin/bash

sudo pacman -Syyu --noconfirm

sudo pacman -S brave-browser gedit neofetch --noconfirm
sudo pamac update && sudo pamac upgrade --no-confirm

sudo pamac install dpkg --no-confirm
sudo pamac update
sudo pamac clean

flatpak install Spotify -y

echo "Finished"
