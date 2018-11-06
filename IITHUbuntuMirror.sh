#!/bin/bash

#change mirror
sudo cp /etc/apt/sources.list /etc/apt/sources.list.`date '+%Y-%m-%d:%H:%M:%S'`
sudo sed -ri "s/[a-z]\{2\}[a-z]?\.archive\.ubuntu\.com/mirror\.iith\.ac\.in/" /etc/apt/sources.list
sudo sed -ri "s/security\.ubuntu\.com/mirror\.iith\.ac\.in/" /etc/apt/sources.list

sudo apt-get update
#sudo apt-get dist-upgrade -fmy
sudo apt-get autoremove -fmy
sudo apt-get autoclean

