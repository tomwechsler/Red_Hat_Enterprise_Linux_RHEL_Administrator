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