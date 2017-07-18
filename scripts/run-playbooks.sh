#!/bin/bash

set -o xtrace

find inventory/ -maxdepth 2 -depth -type f -name 'hosts' -printf '%d\t%p\n' | sort -nk1 | cut -f2- | while read line
do
    ansible-playbook -i $line playbooks/setup-everything.yml $@
done
