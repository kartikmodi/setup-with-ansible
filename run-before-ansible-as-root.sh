# run from root
$DEFAULT_USER=workstation
su  <<!
replaceYourPasswordHere
sed -i '/sudo\tALL=(ALL:ALL)/c\%sudo\tALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers
/sbin/usermod -aG sudo $DEFAULT_USER
!

sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install ansible