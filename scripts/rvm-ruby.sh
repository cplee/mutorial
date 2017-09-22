#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y software-properties-common git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update -y
sudo apt-get install -y rvm

source /etc/profile.d/rvm.sh
rvm install ruby
rvm use ruby --default
echo '' >> /etc/bash.bashrc
echo 'source /etc/profile.d/rvm.sh' >> /etc/bash.bashrc