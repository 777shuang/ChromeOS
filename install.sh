#!/bin/sh
apt-get update
apt-get install pv cgpt
lsblk
read -p "Where do you want to install? [/dev/sda] > " str
if [ $str = "" ]; then
  str=/dev/sda
fi
bash chromeos-install.sh -src rammus_recovery.bin -dst $str
