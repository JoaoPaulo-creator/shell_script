#!/bin/bash

sudo apt remove gnome-remote-desktop gnome-sound-recorder gnome-mines quadrapassel libreoffice-* gnome-weather evolution gnome-sudoku gnome-maps gnome-mahjongg gnome-todo zorin-connect aisleriot gnome-tour -y
sudo apt autoremove && sudo apt autoclean

sudo apt update && sudo apt upgrade -y
