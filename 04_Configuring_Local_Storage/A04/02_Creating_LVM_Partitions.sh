lsblk 

sudo dmsetup ls

sudo dmsetup ls --tree #List device-mapper devices 

sudo parted /dev/loop1

#In parted, create a partition table
mkpart primary 25% 50% set 2 lvm on

mkpart primary 50% 75% set 3 lvm on

mkpart primary 75% 100% set 4 lvm on

print

quit

#Print the partition table
sudo parted /dev/loop1 print