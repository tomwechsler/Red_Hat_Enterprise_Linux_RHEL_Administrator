#Working on rhel

time sleep 5

time dd if=/dev/zero of=dd.disk bs=1M count=500 

time fallocate -l 500M fa.disk 

losetup

sudo losetup

sudo losetup -f dd.disk

losetup

sudo losetup /dev/loop6 fa.disk

losetup

#Detach the loop device
sudo losetup -d /dev/loop6

losetup

#Detach all loop devices
sudo losetup -D

losetup