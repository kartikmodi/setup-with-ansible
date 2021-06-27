sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
sudo cp ../roles/root_user/files/distribution_packages/debian_sources_deb_org-buster.list /etc/apt/sources.list
sudo apt update
# Debian Document Link - https://wiki.debian.org/InstallingDebianOn/Apple/MacBookAir/6-2
# https://wiki.debian.org/wl for BCM4360 in air
# Enable backports to install

# Using uname -r will give exact kernel package version. Stick to this else backports will install latest
sudo apt install \
  dkms build-essential linux-headers-$(uname -r) linux-image-$(uname -r) \
  firmware-linux-nonfree firmware-linux-free firmware-linux \
  broadcom-sta-dkms broadcom-sta-source broadcom-sta-common wireless-tools
# firmware packages linux
# broadcom line -> actual wifi drivers but should be from backports
