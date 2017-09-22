#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
# debug
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo usermod -aG docker vagrant
# TODO: hack around the need to relog for group association to take hold