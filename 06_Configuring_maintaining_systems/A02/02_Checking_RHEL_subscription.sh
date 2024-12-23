#Working on the redhat system

#Switch to the root user
sudo -i

#Check the status of the Red Hat subscription
subscription-manager status

#List all enabled repositories
dnf repolist

#Display the version of the 'yum' package manager
yum --version

#Display the version of the 'dnf' package manager
dnf --version

#Display the version of the 'dnf-3' package manager
dnf-3 --version

#List all available repositories
dnf repolist all

#List all installed packages
dnf list installed

#List all available updates
dnf check-update