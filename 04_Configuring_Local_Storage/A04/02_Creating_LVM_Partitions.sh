#List all block devices
lsblk 

#Use dmsetup to list device-mapper devices
sudo dmsetup ls

#Use dmsetup to list device-mapper devices in tree format
sudo dmsetup ls --tree #List device-mapper devices 

#Print the partition table
sudo parted /dev/loop1

#In parted, create a partition table
mkpart primary 25% 50% set 2 lvm on

mkpart primary 50% 75% set 3 lvm on

mkpart primary 75% 100% set 4 lvm on

print

quit

#Print the partition table
sudo parted /dev/loop1 print