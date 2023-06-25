#!/bin/bash
chk_root () {
  if [ ! $( id -u ) -eq 0 ]; then
    echo Please run this script as root or using sudo
    exit 1
  fi
}
chk_root
mkdir .ark-script-cache
cd .ark-script-cache
git clone https://github.com/Arkapravo-Ghosh/ark-plymouth-theme.git ark-breeze
cp -r ark-breeze /usr/share/plymouth/themes/
plymouth-set-default-theme -R ark-breeze
cd ..
rm -rf .ark-script-cache
echo "Done! Please reboot to see the changes."
