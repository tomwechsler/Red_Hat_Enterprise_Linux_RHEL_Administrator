lsblk

sudo reboot

lsblk

ls /var/disks

sudo losetup -f /var/disks/disk1

lsblk

sudo parted /dev/loop0

sudo mount UUID=0b2e2e8e-0c0d-4c4d-8b0b-2a7f0e7d9d7b /data

mount -t XFS

sudo systemctl edit --full --force losetup.service

#Use the losetup.service.txt file

sudo systemctl daemon-reload

sudo systemctl enable losetup.service

sudo reboot

lsblk

sudo mount UUID=0b2e2e8e-0c0d-4c4d-8b0b-2a7f0e7d9d7b /data