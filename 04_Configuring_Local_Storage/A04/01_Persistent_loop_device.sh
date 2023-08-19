sudo reboot

lsblk /dev/loop1 #Device not found 

sudo losetup /dev/loop1 /var/disks/disk1 

lsblk /dev/loop1 #Found but not partitions 

sudo partprobe /dev/loop1 

lsblk /dev/loop1 