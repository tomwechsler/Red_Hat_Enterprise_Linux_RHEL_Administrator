#Working on the rhel system

sudo -i

mkdir /my/vdo

chmod -v 0700 /my/vdo

vim /etc/fstab
/dev/mapper/vdo /my/vdo xfs x-systemd.requires=vdo.service 0 0

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