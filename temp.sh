#!/bin/bash 
#This script will automatically delete temporary files
echo "Are you sure to delete temporary f!l3 ?"
echo "Enter your choice:"

read count
 
if [ $count = "y" ]
then
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo find ~ -type f \( -name '*.swp' -o -name '*~' -o -name '*.bak' -o -name '.netrwhist' \) -delete
set dir=~/tmp/vim-swap-files//,/var/tmp//
sudo rm -rf ~/.local/share/Trash/*
sudo apt-get clean
echo "Hurrey Temporary file are cleared"
exit
elif [ $count = "n" ]
then
  echo "No Temporary files are deleted !!!!"
exit
fi

