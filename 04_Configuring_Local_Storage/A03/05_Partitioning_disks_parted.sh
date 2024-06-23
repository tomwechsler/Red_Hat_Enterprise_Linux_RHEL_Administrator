sudo parted /dev/loop1 print

#Delete the disk label
sudo parted /dev/loop1 mklabel msdos

#Create a new partition
sudo parted /dev/loop1 mkpart primary 0% 25%

#Print the partition table
sudo parted /dev/loop1 print

#List all block devices
lsblk