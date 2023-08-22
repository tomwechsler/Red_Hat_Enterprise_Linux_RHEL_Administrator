#Create a label
sudo mkfs.xfs -L "DATA" /dev/loop1p1

sudo mount LABEL=DATA /mnt

mount -t XFS

sudo umount /mnt

sudo blkid /dev/loop1p1

#Use the UUDI from above
sudo mount UUID=4a4b4c4d-4e4f-5051-5253-545556575859 /mnt

mount -t XFS

sudo mkdir /data

#To make the mount permanent, add the following line to /etc/fstab
sudo vim /etc/fstab

UUID=4a4b4c4d-4e4f-5051-5253-545556575859 /data xfs defaults 0 0

mount -t XFS

sudo mount -a

mount -t XFS

#Delete the mount point in /etc/fstab
sudo vim /etc/fstab