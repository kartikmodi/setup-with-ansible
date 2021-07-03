# Dependencies to install packages with aptd
# Debian Document Link - https://wiki.debian.org/InstallingDebianOn/Apple/MacBookAir/6-2
# https://wiki.debian.org/wl for BCM4360 in air
# Enable backports to install

sudo apt -y install \
  dkms build-essential linux-headers-$(uname -r) linux-image-$(uname -r) \
  broadcom-sta-dkms
# broadcom line -> actual wifi drivers
# Using uname -r will give exact kernel package version. Stick to this

# This should some warning of firmware missing possible missing firmware /lib/firmware/i915/ for module i915
# https://unix.stackexchange.com/questions/556946/possible-missing-firmware-lib-firmware-i915-for-module-i915
sudo apt -y install \
  firmware-linux-nonfree firmware-linux-free firmware-linux intel-microcode\
  ansible-lint ansible
 # firmware packages linux

# Restart the machine with Wifi Working now

#TODO ansible-doc is not available in testing debian for some reason so need to manually download and install sid version
