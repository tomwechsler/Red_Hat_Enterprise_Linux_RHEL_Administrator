#Create a label
sudo mkfs.xfs -L "DATA" /dev/loop1p1

#Mount the filesystem with the label DATA to the /mnt directory
sudo mount LABEL=DATA /mnt

mount -t XFS

#Unmount the filesystem from the /mnt directory
sudo umount /mnt

#Display the UUID and filesystem type of the partition /dev/loop1p1
sudo blkid /dev/loop1p1

#Use the UUDI from above
sudo mount UUID=4a4b4c4d-4e4f-5051-5253-545556575859 /mnt

mount -t XFS

sudo mkdir /data

#To make the mount permanent, add the following line to /etc/fstab
sudo vim /etc/fstab

# Define a filesystem UUID and its mount options for mounting at /data with the XFS filesystem
UUID=4a4b4c4d-4e4f-5051-5253-545556575859 /data xfs defaults 0 0

mount -t XFS

#Mount all filesystems defined in /etc/fstab, including the one specified by UUID above
sudo mount -a

mount -t XFS

#Delete the mount point in /etc/fstab
sudo vim /etc/fstab