#!/bin/bash
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >/etc/apt/sources.list.d/saltstack.list
sudo apt update
##sudo apt upgrade -y
sudo apt-get install salt-master salt-minion salt-ssh salt-syndic salt-cloud salt-api -y
sudo bash /vagrant/master.pub.sh
