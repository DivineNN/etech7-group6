#!/bin/bash
# Mount an extra ebs volume
# Author: Paa Ngantchanouch
lsblk
sleep 5
echo -n "Enter your directory mount point name: "
read name
sudo mkdir $dirname
sleep 5
sudo mkfs -t ext4 /dev/xvdf
sleep 5
sudo mount /dev/xvdf /mnt/$dirname
sleep 5
lsblk
echo "/dev/xvdf /mnt/$dirname ext4 defaults 0 1" | sudo tee -a /etc/fstab
