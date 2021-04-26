sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
sudo cp ./roles/base/files/distribution_packages/debian_sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade

# better to reboot to check if something is broken
# sudo apt full-upgrade
# better to reboot to check if something is broken
# sudo apt install ansible ansible-doc
