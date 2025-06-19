sudo apt install -y ansible
ansible-playbook local.yml --tags init --verbose

# To setup entire stack
# ansible-playbook local.yml --verbose
