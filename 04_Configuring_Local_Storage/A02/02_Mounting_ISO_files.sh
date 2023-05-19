#Working on rhel

wget https://download.virtualbox.org/virtualbox/6.0.0/VBoxGuestAdditions_6.0.0.iso

sudo losetup -f VBoxGuestAdditions_6.0.0.iso 

lsblk /dev/loop? 

sudo mount /dev/loop0 /mnt 

ls /mnt 

sudo umount /mnt

modinfo loop

man 4 loop



Loop devices have files as the backend storage in place of physical storage. One
way of using them is to access ISO files.