# installing drivers and basic tools
sudo apt install firmware-linux firmware-linux-free firmware-linux-nonfree intel-media-va-driver-non-free intel-microcode git vim htop apt-file
#sudo apt install iwlwifi # dont install, wifi and bluetooth did worked without this installed

# custom kernel
curl 'https://liquorix.net/add-liquorix-repo.sh' | sudo bash
sudo apt-get install -y linux-image-liquorix-amd64 linux-headers-liquorix-amd64


#install nvidia drivers
sudo apt install nvidia-detect
nvidia-detect
# sudo apt install nvidia-driver

lsmod # check modules



