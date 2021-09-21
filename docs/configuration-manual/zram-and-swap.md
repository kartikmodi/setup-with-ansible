# Install zram-tools 
sudo apt install zram-tools

# Edit the config in /etc/default/zramswap
ALGO=lz4
PERCENT=95
PRIORITY=100

# Changes in /ets/fstab for priority to 10
/dev/mapper/debian--x--vg-swap--lv none            swap    sw,pri=10              0       0