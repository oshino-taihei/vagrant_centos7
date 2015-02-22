#!/bin/bash

echo "-----------------------------"
echo " add disk /dev/sdb1 as /u01"
echo "-----------------------------"
sudo su -
yum -y install parted
parted -s -a optimal /dev/sdb mklabel gpt -- mkpart primary ext4 0% 100%
mkfs.ext4 /dev/sdb1
mkdir /u01
echo '/dev/sdb1 /u01 ext4 defaults 0 0' >> /etc/fstab
mount /u01

