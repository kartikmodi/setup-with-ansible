# Install manually because of agreement to license
# Refer https://wiki.debian.org/Steam
# Refer https://unix.stackexchange.com/questions/264004/installing-steam-on-debian
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install steam
sudo apt install  libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386 libgl1-mesa-glx:i386
sudo apt install steam:i386








