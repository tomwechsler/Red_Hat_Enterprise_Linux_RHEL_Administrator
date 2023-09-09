#Working on the rhel system

sudo -i

#Create a mount point for the VDO drive
mkdir /my/vdo

chmod -v 0700 /my/vdo

#Mount the VDO drive
sudo mount /dev/myvg/mylv /my/vdo

#Add the VDO drive to the /etc/fstab file so it is automatically mounted at boot time
echo '/dev/mapper/myvg-mylv /my/vdo xfs defaults,_netdev 0 0' | sudo tee -a /etc/fstab

mount -a

mount -t xfs

chmod -v 3770 /my/vdo

vdostats --human-readable

ls -lh /boot

for i in {1..50} ; do cp /boot/initramfs-$(uname -r).img /my/vdo/initramfs-$(uname -r).img.$i ; done

ls -lh /my/vdo

du -sh /my/vdo

vdostats --human-readable

for i in {1..50} ; do cp /boot/initramfs-$(uname -r).img /my/vdo/initramfs-$(uname -r)s.img.$i ; done

vdostats --human-readable

du -sh /my/vdo