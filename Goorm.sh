#!/bin/bash
#read -p "" CRP
rm *.sh *.deb
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Goorm.sh
eval $CRP --pin=123456
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
eval $CRP --pin=123456
sudo service chrome-remote-desktop start
sudo apt install firefox -y
sudo apt install xfce4 -y 
sudo apt install xrdp -y
eval $CRP --pin=123456
sudo service chrome-remote-desktop start
bash *
