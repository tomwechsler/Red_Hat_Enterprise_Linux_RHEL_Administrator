#Create a new directory named 'disks' under '/var' with superuser privileges
sudo mkdir /var/disks 

#Create a file named 'disk1' of size 1GB in the '/var/disks' directory using fallocate, with superuser privileges
sudo fallocate -l 1G /var/disks/disk1 

#Associate the loop device '/dev/loop1' with the 'disk1' file with superuser privileges
sudo losetup /dev/loop1 /var/disks/disk1 

#Show the status of loop devices
losetup

#Partition the loop device '/dev/loop1' using fdisk with superuser privileges
sudo fdisk /dev/loop1 

#List all block devices
lsblk