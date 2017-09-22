#!/bin/bash
sudo add-apt-repository ppa:gophers/archive -y
sudo apt-get update -y
sudo apt-get install -y golang-1.9

echo '' >> /etc/bash.bashrc
echo '[[ -d "/usr/lib/go-1.9" ]] && export PATH="$PATH:/usr/lib/go-1.9/bin"' >> /etc/bash.bashrc
