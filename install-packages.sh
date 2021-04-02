#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y

# Common packages
sudo apt install build-essential dkms g++ gdb net-tools whois nmap hexchat git curl software-properties-common apt-transport-https wget vlc tlp tlp-rdw -y

#PPAs
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo add-apt-repository ppa:micahflee/ppa -y
sudo add-apt-repository ppa:libreoffice/ppa -y


# Install PPAs
 sudo apt install -y qbittorrent torbrowser-launcher libreoffice  
 
# Calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# Docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update 
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $(whoami)

# KVM Libvirt
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager -y
sudo usermod -aG libvirt $(whoami)
sudo usermod -aG kvm $(whoami)

# VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update && sudo apt install code -y
