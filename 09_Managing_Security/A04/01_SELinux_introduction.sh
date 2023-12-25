#Working on alma

#Display the content of the SELinux configuration file
cat /etc/selinux/config

#Display the SELinuxfs mount point
mount | grep selinux

#Display the current SELinux mode (Enforcing, Permissive, or Disabled)
getenforce

#Display the status of SELinux, including the current mode and policy
sestatus