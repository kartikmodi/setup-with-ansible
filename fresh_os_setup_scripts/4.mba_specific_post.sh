# Using uname -r will give exact kernel package version. Stick to this
sudo apt install \
  dkms build-essential linux-headers-$(uname -r) linux-image-$(uname -r) \
  firmware-linux-nonfree firmware-linux-free firmware-linux \
# firmware packages linux
# broadcom line -> actual wifi drivers but should be from backports