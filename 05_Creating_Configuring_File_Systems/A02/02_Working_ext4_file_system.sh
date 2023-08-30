#Working on the rhel system

#ext4 - Check Interval - The interval in days after which fsck will be run on the filesystem.
#ext4 - Maximum Mount Count - The number of times the filesystem can be mounted before a fsck is performed.

sudo poweroff

#Add three disk to the virtual machine

#Start the virtual machine

lsblk

sudo -i

mkfs.ext4 /dev/sda

dumpe2fs /dev/sda

dumpe2fs /dev/sda | grep count

#The value -1 means disabled
dumpe2fs /dev/sda | grep -i "mount count"

#The value 0 means disabled
dumpe2fs /dev/sda | grep interval

dumpe2fs /dev/sda | grep -i last

tune2fs -L "SALES" /dev/sda

tune2fs -l /dev/sda

tune2fs -l /dev/sda | grep -i volume
