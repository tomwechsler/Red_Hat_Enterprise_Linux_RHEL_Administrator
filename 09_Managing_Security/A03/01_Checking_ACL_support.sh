#Working on the alma system

#Display file system disk space usage in human-readable format and include file system type
df -hT /

#Search for 'acl' in the boot configuration file for the current kernel version
grep -i acl /boot/config-$(uname -r)

#List the 'acl' package using dnf package manager with root privileges
sudo dnf list acl

#Query the RPM package that provides the '/usr/bin/getfacl' file
rpm -qf /usr/bin/getfacl

#List all block devices
lsblk

#Display file system disk space usage for '/boot' in human-readable format and include file system type
df -hT /boot


The control of permissions for access to directories and files originally works as follows:
A resource (file or directory) can only have an owner in the sense of a user and an owner group. 
Based on these two assignments, authorizations can be assigned that only relate to reading, writing and executing. 
A further assignment of rights can of course be applied to others, i.e. all others. Because all of this is the case, 
it makes no sense under Linux to be a member of several security groups at the same time

ACLs are access control lists that can contain several users and security groups in order to grant each of these 
users and groups a set of authorizations for the respective resource.