#!/bin/bash

set -o xtrace

# Install Ansible from GIT.
apt-get update
apt-get -y install python3 python3-dev
curl -sL https://bootstrap.pypa.io/get-pip.py | python3
sudo -H pip3 install --upgrade ansible
