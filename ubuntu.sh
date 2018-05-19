#!/bin/bash
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >/etc/apt/sources.list.d/saltstack.list
sudo apt update
#sudo apt upgrade -y
sudo apt-get install salt-minion -y
sudo echo master: 192.168.70.11 >> /etc/salt/minion
sudo cat /vagrant/master.pub >> /etc/salt/minion
sudo systemctl restart salt-minion

