sudo mkdir /var/disks 

sudo fallocate -l 1G /var/disks/disk1 

sudo losetup /dev/loop1 /var/disks/disk1 

losetup

sudo fdisk /dev/loop1 

lsblk