#Working on the rhel system in root session

#Display the status of the NFS server service
systemctl status nfs-server

#Stop the NFS server service
systemctl stop nfs-server

#Open the /etc/exports.d/my.exports file in the vim editor to edit NFS exports
vim /etc/exports.d/my.exports
/my/data	192.168.56.*(rw)
/my/files	192.168.56.*(rw,no_root_squash)

#Create the /my/data and /my/files directories
mkdir /my/data
mkdir /my/files

#Change directory to /my/data
cd /my/data

#Create files in the /my/data directory
touch file1
touch file2

#Change directory to /my/files
cd /my/files

#Create files in the /my/files directory
touch file23
touch file24

cd

#Configure SELinux
ls -ldZ /my/data /my/files

#Install the policycoreutils-devel package
dnf install policycoreutils-devel

#Generate a man page for the nfsd_t SELinux type and place it in /usr/share/man/man8
sepolicy manpage -d nfsd_t -p /usr/share/man/man8

#Initialize or update the manual page index database
mandb

#Search the manual page names and descriptions for the keyword '_selinux'
apropos _selinux

#Display the manual page for nfsd_selinux
man 8 nfsd_selinux

#Add a file context rule to label the /my/data directory and its contents with the nfs_t type
semanage fcontext -a -t nfs_t "/my/data(/.*)?"

#Add a file context rule to label the /my/files directory and its contents with the nfs_t type
semanage fcontext -a -t nfs_t "/my/files(/.*)?"

#List the details of /my/data and /my/files, including SELinux context
ls -ldZ /my/data /my/files

#Apply the SELinux context rules to the /my/data directory and its contents
restorecon -Rv /my/data

#Apply the SELinux context rules to the /my/files directory and its contents
restorecon -Rv /my/files

#Start the NFS server service
systemctl start nfs-server

#Display the status of the NFS server service
systemctl status nfs-server

#Re-export all directories listed in /etc/exports
exportfs -r

#Display the current NFS exports and their options
exportfs -v

#Configure the firewall
#Check the state of the firewall
firewall-cmd --state

#Start the firewall
systemctl enable firewalld --now

#Check the state of the firewall
systemctl status firewalld

#List all the current firewall settings and rules
firewall-cmd --list-all

#List all available services that can be managed by the firewall
firewall-cmd --get-services

#Find all XML files in the filesystem and filter the results to show only those related to NFS
find / -name *.xml | grep nfs

#Add the NFS service to the firewall rules
firewall-cmd --add-service=nfs

#Permanently add the mountd and rpc-bind services to the firewall rules
firewall-cmd --permanent --add-service=mountd --add-service=rpc-bind

#Reload the firewall to apply the permanent rules
firewall-cmd --reload

#List all the current firewall settings and rules again to verify changes
firewall-cmd --list-all

#Two ways to make the change permanent
firewall-cmd --runtime-to-permanent

#Permanently add the NFS service to the firewall rules
firewall-cmd --permanent --add-service=nfs

#Reload the firewall to apply the permanent rules
firewall-cmd --reload

#Display the NFS exports on the local host
showmount -e localhost