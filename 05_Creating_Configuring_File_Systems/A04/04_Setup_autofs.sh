#Working on the alma system

sudo -i

#Install the autofs package
dnf install -y autofs

#Open the /etc/auto.master file in the vim editor to configure autofs
vim /etc/auto.master

#Open the /etc/auto.master.d/srv.autofs file in the vim editor to add autofs configuration for /srv
vim /etc/auto.master.d/srv.autofs

#Add the autofs map file /etc/auto.data for the /srv directory
/srv /etc/auto.data

#List the contents of the /srv directory
ls /srv

#Open the /etc/auto.data file in the vim editor to configure NFS mount points
vim /etc/auto.data

#Add an entry to mount the NFS export /srv/nfsdata from 192.168.56.108 with read-write and soft mount options
nfsdata -rw,soft 192.168.56.108:/srv/nfsdata

#Enable and start the autofs service immediately
systemctl enable --now autofs

#Exit the root session
exit

#Created when autofs is started
ls -ld /srv

ls -l /srv

cd /srv

ls

#created when accessing the directory
cd nfsdata

ls