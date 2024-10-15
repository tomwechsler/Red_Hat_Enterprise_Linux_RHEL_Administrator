#Working on the alma system

#Start a root session
sudo -i

#Install the NFS utilities package
dnf install -y nfs-utils

#Display the NFS exports available on the server at 192.168.56.101
showmount -e 192.168.56.101

#Create the /remote/files directory and any necessary parent directories
mkdir -p /remote/files

#Create the /remote/data directory and any necessary parent directories
mkdir -p /remote/data

#Mount the NFS export /my/files from the server at 192.168.56.102 to /remote/files
mount 192.168.56.102:/my/files /remote/files

#Mount the NFS export /my/data from the server at 192.168.56.102 to /remote/data
mount 192.168.56.102:/my/data /remote/data

#Display all currently mounted filesystems
mount

#Change the current directory to /remote/files
cd /remote/files

#Create an empty file named datei23.txt in the current directory
touch datei23.txt

#Change the current directory to /remote/data
cd ../data

touch root			#does not work because root_squash is active

vim /etc/fstab

192.168.56.102:/my/data	/remote/data	nfs	_netdev		0 0

#reboot or mount to test everything