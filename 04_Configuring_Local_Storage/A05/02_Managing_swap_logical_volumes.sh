free

free -b

free -k

free -m

free -g

free -h

vgs vg1

lvcreate -n swap -L 104M vg1

mkswap /dev/vg1/swap

swapon -p 10 /dev/mapper/vg1-swap

swapon -s

swappoff -a

vim /etc/fstab

/dev/mapper/vg1-swap none swap pri=3 0 0

swapon -a

swapon -s

#Remove the swap line
vim /etc/fstab