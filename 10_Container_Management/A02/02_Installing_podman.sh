#Working on the rhel system

#List all packages that match 'podman*'
dnf list podman*

#Install the EPEL repository for Fedora 9 with root privileges
sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

#Update all packages with root privileges
sudo dnf update

#Install 'podman' and 'podman-compose' packages with root privileges
sudo dnf install -y podman podman-compose

#Display the user identity
id

#Display the version of Podman
podman -v