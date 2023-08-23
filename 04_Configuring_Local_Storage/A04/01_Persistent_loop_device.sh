lsblk

sudo reboot

lsblk

ls /var/disks

sudo losetup -f /var/disks/disk1

lsblk

sudo partprobe /dev/loop0

sudo mount UUID=8a3f1d99-bcf2-42bd-b96a-8cefae231ab8 /data

mount -t XFS

sudo systemctl edit --full --force losetup.service

#Use the losetup.service.txt file

sudo systemctl daemon-reload

sudo systemctl enable losetup.service

sudo reboot

lsblk

sudo mount UUID=8a3f1d99-bcf2-42bd-b96a-8cefae231ab8 /data