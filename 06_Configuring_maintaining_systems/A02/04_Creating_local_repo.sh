#Working on the redhat system (be sure that you have the RHEL DVD connected to the VM)

#Switch to the root user
sudo -i

#List all block devices
lsblk

#Mount the device /dev/sr0 to the /mnt directory
mount /dev/sr0 /mnt

#List the contents of the /mnt directory
ls /mnt

#List the contents of the /mnt directory that start with 'A' or 'B'
ls /mnt/[AB]*

#Install the dnf-plugins-core package
dnf install dnf-plugins-core

#Create a local repository
dnf config-manager --add-repo=/mnt/BaseOS

#This command displays the contents of the repository file
cat /etc/yum.repos.d/mnt-BaseOS.repo

#This command lists the enabled repositories
dnf repolist

#This command lists all the repositories
dnf repolist --all

#Create a local repository
dnf config-manager --add-repo=/mnt/AppStream 

#This command disables the BaseOS repository
dnf config-manager --disable rhel-9-for-x86_64-baseos-rpms

dnf repolist

#Install the zsh package
dnf install zsh

#This command enables the BaseOS repository
dnf config-manager --enable rhel-9-for-x86_64-baseos-rpms