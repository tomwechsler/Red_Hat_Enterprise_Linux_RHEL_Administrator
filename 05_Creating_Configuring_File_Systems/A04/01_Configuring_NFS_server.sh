#Working on the rhel system

#The NFS server and client are installed by default on RHEL 8. The NFS server is provided by the nfs-server package and the NFS client is 
#provided by the nfs-utils package. Disabling NFSv3 is recommended, but not required. NFSv3 is disabled by default on RHEL 8. NFSv4 listens on port 2049 by default.

#We can either edit the new /etc/nfs.conf file or make use of the equally new nfsconf command
#line utility. The nfsconf command is used to configure the NFS client and server

#Install the nfs-utils package
sudo dnf install -y nfs-utils

ss -ntl

#Configure the NFS server
sudo nfsconf --set nfsd vers4 y

#Enable TCP protocol for NFS server
sudo nfsconf --set nfsd tcp y

#Disable UDP protocol for NFS server
sudo nfsconf --set nfsd udp n

#Disable NFS version 3 for NFS server
sudo nfsconf --set nfsd vers3 n

#Check the configuration
sudo vim /etc/nfs.conf

#Enable and start the NFS server service immediately
sudo systemctl enable --now nfs-server

#Display listening TCP ports and their status
ss -ntl

#Display the supported NFS versions by the NFS server
sudo cat /proc/fs/nfsd/versions