#!/bin/bash

sudo apt remove gnome-remote-desktop gnome-sound-recorder gnome-mines quadrapassel libreoffice-* gnome-weather -y
sudo apt autoremove evolution -y

sudo apt update && sudo apt upgrade -y
