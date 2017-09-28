#!/bin/bash

set -o xtrace

# Install Ansible from GIT.
apt-get update
apt-get -y install python-minimal python-pip python-dev
sudo -H pip install --upgrade ansible
