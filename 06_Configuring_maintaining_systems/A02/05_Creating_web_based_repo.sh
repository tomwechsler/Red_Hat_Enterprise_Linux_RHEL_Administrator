#Working on the redhat system (be sure that you have the RHEL DVD connected to the VM)

sudo -i

#Install the Apache HTTP server
dnf install -y httpd 

#List the contents of the /etc/yum.repos.d/ directory
ls /etc/yum.repos.d/

#Remove any files in the /etc/yum.repos.d/ directory that start with "mnt_"
rm /etc/yum.repos.d/mnt_*

#Mount the CD-ROM to the /var/www/html directory
mount /dev/cdrom /var/www/html

#Start the Apache HTTP server
systemctl start httpd

#Add the BaseOS repository to the list of repositories
dnf config-manager --add-repo=http://127.0.0.1/BaseOS

#Add the AppStream repository to the list of repositories
dnf config-manager --add-repo=http://127.0.0.1/AppStream

#List the available repositories
dnf repolist

#Generate the metadata cache for the enabled repositories
dnf makecache