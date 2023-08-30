#Working on the alma system

#Start a root session
sudo -i

dnf install -y nfs-utils

showmount -e 192.168.56.102

mkdir -p /remote/files
mkdir -p /remote/data

mount 192.168.56.102:/my/files /remote/files
mount 192.168.56.102:/my/data /remote/data

mount

cd /remote/files

touch datei23.txt

cd ../data

touch root			#does not work because root_squash is active

vim /etc/fstab

192.168.56.102:/my/data	/remote/data	nfs	_netdev		0 0

#reboot or mount to test everything