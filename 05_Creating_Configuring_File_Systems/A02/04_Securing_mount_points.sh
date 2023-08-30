#Working on the rhel system

sudo -i

mkdir -p /my/sales

chmod -v 707 /my/sales

cd /my/sales

#Leave the root shell
exit

cd /my/sales

cd

sudo -i

chmod -v 700 /my/sales

mount /dev/sda /my/sales

chmod -v 707 /my/sales

#Leave the root shell
exit

cd /my/sales

cd

sudo umount /my/sales

#Permission denied
cd /my/sales

sudo mount /dev/sda /my/sales

cd /my/sales

#Copy the UUID of the /dev/sda
sudo blkid /dev/sda

sudo vim /etc/fstab
#Add the following line to the /etc/fstab file
#UUID=0a0a0a0a-0a0a-0a0a-0a0a-0a0a0a0a0a0a /my/sales ext4 defaults 0 0
#Save and exit
