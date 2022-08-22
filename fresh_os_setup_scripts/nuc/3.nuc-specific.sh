# Dependencies to install packages with apt
sudo apt -y install curl wget apt-transport-https dirmngr

# existing kernel
sudo apt -y install build-essential linux-headers-$(uname -r) linux-image-$(uname -r)

# reboot recommended

# installing drivers and basic tools
sudo apt install -t bullseye-backports firmware-linux firmware-linux-free firmware-linux-nonfree intel-media-va-driver-non-free intel-microcode git vim htop apt-file
#sudo apt install iwlwifi # dont install, wifi and bluetooth did worked without this installed

# reboot recommended

# custom kernel
curl 'https://liquorix.net/add-liquorix-repo.sh' | sudo bash
sudo apt-get install -y linux-image-liquorix-amd64 linux-headers-liquorix-amd64

# reboot mandated

#install nvidia drivers
sudo apt install nvidia-detect
nvidia-detect
# sudo apt install nvidia-driver

# reboot mandated

lsmod # check modules

# ansible
sudo apt install ansible-lint ansible dconf-editor python3-psutil dconf-cli python3-apt


