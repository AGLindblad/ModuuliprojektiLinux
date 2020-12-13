#!/bin/bash

echo "Installing updates, configures and Salt..."

setxkbmap fi

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install -y salt-minion

echo "master: xxx.xxx.xxx.xxx" | sudo tee /etc/salt/minion

sudo systemctl restart salt-minion.service

echo "Done."

#Lähde: https://github.com/VilleWilkman/moduuli/blob/master/minion.sh
