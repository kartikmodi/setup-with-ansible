sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
sudo cp ./roles/base/files/distribution_packages/debian_sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install ansible