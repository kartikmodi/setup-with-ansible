References:
* https://wiki.archlinux.org/title/Bluetooth


Points - 
* hcitool scan: Device not found
  On some laptops (e.g. Dell Studio 15, Lenovo Thinkpad X1) you have to switch the Bluetooth mode from HID to HCI. Install the bluez-hid2hci package, then udev should do this automatically. Alternatively, you can run this command to switch to HCI manually:
  From https://wiki.archlinux.org/title/Bluetooth

* bluetoothctl: No default controller available - https://wiki.archlinux.org/title/Bluetooth
