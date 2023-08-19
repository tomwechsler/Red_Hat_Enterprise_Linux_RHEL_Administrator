sudo parted /dev/loop1 mkpart primary 25% 50% set 2 lvm on

sudo parted /dev/loop1 mkpart primary 50% 75% set 3 lvm on

sudo parted /dev/loop1 mkpart primary 75% 100% set 4 lvm on

sudo parted /dev/loop1 print