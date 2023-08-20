#Working on rhel

lsblk

losetup

sudo !!

sudo dnf install -y wget

wget https://download.virtualbox.org/virtualbox/6.0.0/VBoxGuestAdditions_6.0.0.iso

sudo losetup -f VBoxGuestAdditions_6.0.0.iso 

losetup

lsblk /dev/loop? 

sudo mount /dev/loop0 /mnt 

lsblk /dev/loop0

ls /mnt 

sudo umount /mnt

losetup

lsblk

modinfo loop

man 4 loop


