#!/usr/bin/env bash

PPA_PIPER_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DIRETORIO="$HOME/Downloads/programas"

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cahe/apt/arhives/lock

sudo dpkg --add-architecture i386
sudo apt update -y
sudo apt-add-repositiry $PPA_LUTRIS -y
sudo apt-add-repositiry $PPA_PIPER_LIBRATBAG -y
sudo apt update -y

mkdir $DIRETORIO
wget $URL_GOOGLE_CHROME -P $DIRETORIO
sudo dpkg -i $DIRETORIO/*.deb

sudo apt -f install -y
