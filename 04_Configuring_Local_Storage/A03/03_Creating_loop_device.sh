#Partitions are created on loop devices, which are special files that emulate a block device.
#The Partitiontable is created with fdisk or parted. MBR or GPT can be used. MBR is the default.
#GPT is used for disks larger than 2TB. MBR supports up to 4 primary partitions. GPT supports up to 128 primary partitions.

sudo losetup -f <disk file>                 #Attach next available loop device 

sudo losetup /dev/loop1 /var/disks/disk1    #Attach loop1 

losetup                                     #List loop devices 

sudo losetup -d /dev/loop0                  #Delete or detach loop0 

sudo losetup -D                             #Detach all