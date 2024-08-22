#Working on the rhel system

#ext4 - Check Interval - The interval in days after which fsck will be run on the filesystem.
#ext4 - Maximum Mount Count - The number of times the filesystem can be mounted before a fsck is performed.

sudo poweroff

#Add three disk to the virtual machine

#Start the virtual machine

#List all block devices
lsblk

#Switch to the root user
sudo -i

#Create an ext4 filesystem on /dev/sdb
mkfs.ext4 /dev/sdb

#Display detailed information about the ext4 filesystem on /dev/sdb
dumpe2fs /dev/sdb

#Display detailed information about the ext4 filesystem on /dev/sdb and filter the output to show lines containing 'count'
dumpe2fs /dev/sdb | grep count

#The value -1 means disabled
dumpe2fs /dev/sdb | grep -i "mount count"

#The value 0 means disabled
dumpe2fs /dev/sdb | grep interval

#Display detailed information about the ext4 filesystem on /dev/sdb and filter the output to show lines containing 'last' (case-insensitive)
dumpe2fs /dev/sdb | grep -i last

#Change the label of the ext4 filesystem on /dev/sdb to "SALES"
tune2fs -L "SALES" /dev/sdb

#Display detailed information about the ext4 filesystem on /dev/sdb
tune2fs -l /dev/sdb

#Display detailed information about the ext4 filesystem on /dev/sdb and filter the output to show lines containing 'volume' (case-insensitive)
tune2fs -l /dev/sdb | grep -i volume