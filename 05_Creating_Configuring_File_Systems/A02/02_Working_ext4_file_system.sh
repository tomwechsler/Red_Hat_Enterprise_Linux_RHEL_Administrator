#Working on the rhel system

#ext4 - Check Interval - The interval in days after which fsck will be run on the filesystem.
#ext4 - Maximum Mount Count - The number of times the filesystem can be mounted before a fsck is performed.

sudo poweroff

#Add three disk to the virtual machine

#Start the virtual machine

lsblk

sudo -i

mkfs.ext4 /dev/sda

dump2fs /dev/sda

dump2fs /dev/sda | grep count

dump2fs /dev/sda | grep -i "mount count"

dump2fs /dev/sda | grep interval

dump2fs /dev/sda | grep -i last

tune2fs -L "SALES" /dev/sda

tune2fs -l /dev/sda

tune2fs -l /dev/sda | grep -i volume
