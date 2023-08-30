#Working on the rhel system

#The NFS server and client are installed by default on RHEL 8. The NFS server is provided by the nfs-server package and the NFS client is 
#provided by the nfs-utils package. Disabling NFSv3 is recommended, but not required. NFSv3 is disabled by default on RHEL 8. NFSv4 listens on port 2049 by default.

#We can either edit the new /etc/nfs.conf file or make use of the equally new nfsconf command
#line utility. The nfsconf command is used to configure the NFS client and server

#Install the nfs-utils package
sudo dnf install -y nfs-utils

ss -ntl

#Configure the NFS server
nfsconf --set nfsd vers4 y

nfsconf --set nfsd tcp y

nfsconf --set nfsd udp n

nfsconf --set nfsd vers3 n

#Check the configuration
vim /etc/nfs.conf

nfsconf --show

sudo systemctl enable --now nfs-server

ss -ntl

cat /proc/fs/nfsd/versions