# Dependencies to install packages with apt
sudo apt -y install curl wget apt-transport-https dirmngr

# clean upgade
sudo apt upgrade 

# existing kernel
sudo apt -y install build-essential linux-headers-$(uname -r) linux-image-$(uname -r)

# reboot recommended

# installing drivers and basic tools
sudo apt install firmware-linux firmware-linux-free firmware-linux-nonfree intel-microcode git vim htop apt-file sudo yakuake locate

#sudo apt install iwlwifi # dont install, wifi and bluetooth did worked without this installed

# reboot recommended

# custom kernel - liquorix
curl 'https://liquorix.net/add-liquorix-repo.sh' | sudo bash
sudo apt-get install -y linux-image-liquorix-amd64 linux-headers-liquorix-amd64

# reboot mandated


# ansible
sudo apt install ansible-lint ansible dconf-editor python3-psutil dconf-cli python3-apt

# enable 32bit libs
sudo dpkg --add-architecture i386 && sudo apt update
# run ansible scripts from here

# Start with intel
sudo apt remove xserver-xorg-video-intel #discouraged package
sudo apt install  intel-gpu-tools intel-media-va-driver-non-free intel-microcode libdrm-intel1 libdrm-intel1:i386 libegl-mesa0 libegl-mesa0:i386 libgl1-mesa-dri libgl1-mesa-dri:i386 libglapi-mesa libglapi-mesa:i386 libglu1-mesa libglvnd0 libglvnd0:i386 libglx-mesa0 libglx-mesa0:i386 libva-glx2 libvdpau1 libvdpau1:i386 libvdpau-va-gl1 libvulkan1 mesa-utils mesa-utils-bin mesa-va-drivers mesa-vdpau-drivers mesa-vulkan-drivers mesa-vulkan-drivers:i386 vainfo vdpau-driver-all vulkan-tools

# reboot recommended

#install nvidia drivers
sudo apt install nvidia-detect
nvidia-detect

# Install nvidia driver manually and not inside a script/ansible as it may ask imp questions
sudo apt install nvidia-driver

sudo apt install nvidia-driver-libs:i386 nvidia-vaapi-driver nvidia-driver-libs:i386 nvidia-vaapi-driver:i386 nvidia-vdpau-driver:i386 nvidia-libopencl1 nvidia-libopencl1:i386 nvidia-vulkan-icd nvidia-vulkan-icd:i386 nvidia-vaapi-driver nvidia-vaapi-driver:i386 libnvoptix1
# reboot mandated

lsmod # check modules

# sysctl entry only if vulkaninfo complains. see kde infocenter -> Graphics
sudo vim  /etc/sysctl.conf # --> dev.i915.perf_stream_paranoid=0
sudo sysctl dev.i915.perf_stream_paranoid=0 #runtime

# helper commands
xrandr --listproviders
glxinfo
glxgears
glxinfo | egrep -i 'renderer|vga|render|graphic|display'
intel_gpu_top
vulkaninfo
vainfo
rfkill
lshw
gnome-disk-utility
sudo    grep -ri nvidia /{etc,usr/share}/X11/*/*.conf* # search nvidia x11 conf

# Check logs
dmesg | egrep -i 'error|nvidia|intel|i915|iwlwifi'
sudo less /var/log/syslog
sudo less  kern.log
journalctl -b -1 # shows logs from previous boot
less /var/log/Xorg.0.log
