#Working on the rhel system

#Switch to the root user
sudo -i

#Create the directory /my/sales and any necessary parent directories
mkdir -p /my/sales

#Change the permissions of /my/sales to 707 (rwx---rwx) and display a message for each file processed
chmod -v 707 /my/sales

#Change the current directory to /my/sales
cd /my/sales

#Leave the root shell
exit

#Change the current directory to /my/sales
cd /my/sales

#Change the current directory to the home directory
cd

#Switch to the root user
sudo -i

#Change the permissions of /my/sales to 700 (rwx------) and display a message for each file processed
chmod -v 700 /my/sales

#Mount the filesystem on /dev/sda to /my/sales
mount /dev/sda /my/sales

#Change the permissions of /my/sales to 707 (rwx---rwx) and display a message for each file processed
chmod -v 707 /my/sales

#Leave the root shell
exit

#change into my/sales
cd /my/sales

cd

#Unmount the /my/sales filesystem
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
