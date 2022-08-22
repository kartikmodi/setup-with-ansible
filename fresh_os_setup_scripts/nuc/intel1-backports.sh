# enable 32bit libs
sudo dpkg --add-architecture i386 && sudo apt update

# installing intel drivers
sudo apt install -t bullseye-backports firmware-linux firmware-linux-nonfree intel-microcode \
  libdrm-intel1 libdrm-intel1:i386 libegl-mesa0 libegl-mesa0:i386 libgl1-mesa-dri libgl1-mesa-dri:i386 libglapi-mesa libglapi-mesa:i386 libglvnd0 libglvnd0:i386 \
  libglx-mesa0 libglx-mesa0:i386 libva-glx2 libvulkan1 mesa-va-drivers mesa-vdpau-drivers mesa-vulkan-drivers mesa-vulkan-drivers:i386