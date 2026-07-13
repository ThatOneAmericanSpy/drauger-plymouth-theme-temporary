#!/usr/bin/env bash
echo Enter sudo password if prompted...

sudo mkdir -p /usr/share/plymouth/themes/Drauger
sudo cp -rf ./main/* /usr/share/plymouth/themes/Drauger

sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Drauger/Drauger.plymouth 100

# select the theme to apply
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/Drauger/Drauger.plymouth

# update initramfs
sudo update-initramfs -u

echo Done!
