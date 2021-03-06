#!/bin/bash
set -euo pipefail

sudo apt-get install -y gconf-service gconf2
sudo apt --fix-broken install -y
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get install -f -y
rm gitkraken-amd64.deb
echo fs.inotify.max_user_watches=9999999 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
