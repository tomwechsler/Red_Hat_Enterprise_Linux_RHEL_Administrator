#Working on the rhel system

sudo -i

#Create a Stratis filesystem named 'fs1' in the 'pool1' pool
stratis filesystem create pool1 fs1

#Create a directory named /my/stratis
mkdir /my/stratis

vim /etc/fstab
#Add the following line to the fstab file:
/dev/stratis/pool1/fs1 /my/stratis xfs x-systemd.requires=stratisd.service 0 0

#Mount all filesystems defined in /etc/fstab
mount -a

#Attempt to mount a filesystem of type XFS without specifying a device or mount point, which will fail
mount -t xfs

#Display information about Stratis filesystems
stratis filesystem

#List all Stratis filesystems
stratis filesystem list

#Display disk usage in human-readable format for the /my/stratis directory
df -h /my/stratis