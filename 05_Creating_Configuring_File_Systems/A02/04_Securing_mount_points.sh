#Working on the rhel system

sudo -i

mkdir -p /data/sales

chmod -v 707 /data/sales

cd /data/sales

#Leave the root shell
exit

cd /data/sales

cd

sudo -i

chmod -v 700 /data/sales

mount /dev/sda /data/sales

chmod -v 707 /data/sales

#Leave the root shell
exit

cd /data/sales

cd

sudo umount /data/sales

#Permission denied
cd /data/sales

sudo mount /dev/sda /data/sales

cd /data/sales

#Copy the UUID of the /dev/sda
sudo blkid /dev/sda

sudo vim /etc/fstab
#Add the following line to the /etc/fstab file
#UUID=0a0a0a0a-0a0a-0a0a-0a0a-0a0a0a0a0a0a /data/sales ext4 defaults 0 0
#Save and exit
