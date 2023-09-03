#Working on the rhel system

sudo -i

stratis filesystem create pool1 fs1

mkdir /my/stratis

vim /etc/fstab
#Add the following line to the fstab file:
/stratis/pool1/fs1 /my/stratis xfs x-systemd.requires=stratisd.service defaults 0 0

mount -a

mount -t xfs

stratis filesystem

stratis filesystem list

df -h /my/stratis