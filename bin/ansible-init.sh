#!/usr/bin/env bash
set -e

sudo apt install -y ansible

# Install roles into the local `roles/` directory
ansible-galaxy install -r requirements.yml --roles-path=roles

ansible-playbook -i hosts.ini -l {hostname} --tags init local.yml --verbose

# To setup entire stack
# ansible-playbook local.yml --verbose
