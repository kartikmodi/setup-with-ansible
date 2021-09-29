sudo apt -y install curl wget apt-transport-https dirmngr
sudo apt -y install dkms build-essential linux-headers-$(uname -r)
# Mount the iso of vbox guest additions now

# sudo mount /dev/cdrom /mnt/guestadditions if required
sudo sh ./VBoxLinuxAdditions.run

# lsmod | grep vboxguest # to check and confirm