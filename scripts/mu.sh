#!/bin/bash
curl -s http://getmu.io/install.sh | sh
sudo apt install python-pip
pip install --upgrade pip
pip install awscli --upgrade --user
sudo apt install -y jq

# aws configure
# aws ecr get-login --no-include-email
