#Working on the rhel system

#Switch to the root user
sudo -i

#List all block devices
lsblk

#Display help information for the lsblk command
lsblk --help

#List all block devices with filesystem information
lsblk -f

#Display XFS filesystem information for /dev/sda1
xfs_info /dev/sda1

#Display the label of the XFS filesystem on /dev/sda1
xfs_admin -l /dev/sda1

#List the contents of the /boot directory
ls /boot

#Unmount the /boot directory
umount /boot

#Change the label of the XFS filesystem on /dev/sda1 to "boot"
xfs_admin -L "boot" /dev/sda1

#Display the label of the XFS filesystem on /dev/sda1 again to verify the change
xfs_admin -l /dev/sda1

#Mount the /boot directory
mount /boot

#Display the UUID of the XFS filesystem on /dev/sda1
xfs_admin -u /dev/sda1