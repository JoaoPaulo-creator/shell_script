#!/usr/bin/env bash

PPA_PIPER_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DIRETORIO="$HOME/Downloads/programas"


lock_remover () {

  sudo rm /var/lib/dpkg/lock-frontend
  sudo rm /var/cahe/apt/arhives/lock

}

add_architecture_i386 (){

sudo dpkg --add-architecture i386

}

adding_ppa (){

  sudo apt update -y
  sudo apt-add-repositiry $PPA_LUTRIS -y
  sudo apt-add-repositiry $PPA_PIPER_LIBRATBAG -y

}

update (){
  sudo apt update
}

install_chrome(){

  mkdir $DIRETORIO
  wget $URL_GOOGLE_CHROME -P $DIRETORIO
  sudo dpkg -i $DIRETORIO/*.deb
  sudo apt -f install -y

}

install_apt_pkgs (){

    sudo apt install snapd -y
    sudo apt install winff -y
    sudo apt install guvcview -y
    sudo apt install virtualbox -y

}

install_snap_pkgs (){

  sudo snap install spotify

}

clean_n_upgrade_system (){
  sudo apt dist-upgrade -y
  sudo apt autoclean
  sudo apt autoremove -y
}

lock_remover
add_architecture_i386
adding_ppa
update
install_chrome
install_apt_pkgs
install_snap_pkgs
clean_n_upgrade_system
