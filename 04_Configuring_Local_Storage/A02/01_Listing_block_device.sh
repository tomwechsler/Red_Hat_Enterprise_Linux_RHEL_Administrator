#Working on rhel

#List the files and directories in the current directory
ls

#Display information about the CPU architecture
lscpu

#Show the status of modules in the Linux Kernel
lsmod

#Display information about a Linux Kernel module
modinfo sd_mod | less

#List all block devices
lsblk

#Display block device information for /dev/sda
lsblk /dev/sda

#Display block device information for /dev/sda2
lsblk /dev/sda2

#Display the hierarchy of block devices, showing what block devices are 'above' /dev/sda2 (i.e., what /dev/sda2 is a part of)
lsblk -s /dev/sda2

#Print the block device (partition and filesystem) UUIDs
sudo blkid

#Display file system disk space usage with human-readable sizes (-h) and print the file system type (-T)
df -Th