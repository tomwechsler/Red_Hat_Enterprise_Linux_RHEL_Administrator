#Working on the alma system

sudo -i

#Install the autofs package
dnf install -y autofs

#Open the /etc/auto.master file in the vim editor to configure autofs
vim /etc/auto.master

#Open the /etc/auto.master.d/my.autofs file in the vim editor to add autofs configuration for /my
vim /etc/auto.master.d/my.autofs

#Add the autofs map file /etc/auto.data for the /my directory
/my /etc/auto.data

#List the contents of the /my directory
ls /my

#Open the /etc/auto.data file in the vim editor to configure NFS mount points
vim /etc/auto.data

#Add an entry to mount the NFS export /my/files from 192.168.56.102 with read-write and soft mount options
files -rw,soft 192.168.56.102:/my/files

#Enable and start the autofs service immediately
systemctl enable --now autofs

#Exit the root session
exit

#Created when autofs is started
ls -ld /my

ls -l /my

cd /my

ls

#created when accessing the directory
cd files

ls