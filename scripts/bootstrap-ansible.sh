#!/bin/bash

set -o xtrace

# Install Ansible from PPA.
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
