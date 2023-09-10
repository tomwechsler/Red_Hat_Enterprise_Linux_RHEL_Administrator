#Working on the rhel system

sudo -i

find /usr/share/doc -type f -name '*.html' -exec cp {} /my/stratis \;

ls /my/stratis

mkdir /backup

stratis filesystem snapshot pool1 fs1 snap1 

mount /dev/stratis/pool1/snap1 /backup

ls /backup

ls /my/stratis

rm -f /my/stratis/*me*

ls /my/stratis

cp /backup/*me* /my/stratis

ls /my/stratis

stratis filesystem snapshot pool1

umount /backup

stratis filesystem destroy pool1 snap1