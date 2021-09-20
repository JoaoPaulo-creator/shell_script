#!/bin/bash

sudo apt remove gnome-remote-desktop gnome-sound-recorder gnome-mines quadrapassel libreoffice-* gnome-weather evolution -y
sudo apt autoremove -y

sudo apt update && sudo apt upgrade -y
