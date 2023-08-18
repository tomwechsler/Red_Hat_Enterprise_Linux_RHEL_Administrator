sudo mkdir /var/disks 

sudo fallocate -l 1G /var/disks/disk1 

sudo losetup /dev/loop1 /var/disks/disk1 

sudo fdisk /dev/loop1 

sudo parted /dev/loop1 mklabel msdos mkpart primary 0% 25% 
