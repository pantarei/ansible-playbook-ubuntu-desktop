#!/bin/bash

set -o xtrace

# Install Ansible from GIT.
apt-get update
apt-get -y install python-minimal python-dev
curl -sL https://bootstrap.pypa.io/get-pip.py | python
sudo -H pip install --upgrade ansible
