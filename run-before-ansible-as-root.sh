# run from root
echo replaceWithPassBeforeRunning | sudo -S -s \
sed -i '/sudo   ALL=(ALL:ALL)/c\%sudo   ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers \
&& usermod -aG sudo $DEFAULT_USER

sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install ansible