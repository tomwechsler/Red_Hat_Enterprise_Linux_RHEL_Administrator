#Working on the rhel system

sudo dd if=/dev/urandom of=/dev/sdb2 bs=1k seek=10 count=4k

lsblk

dump2fs /dev/sde2 | grep uperblock #(everything is ok with /dev/sde2 - I write "uperblock" because I don't know if it's upper or lower case)

dump2fs /dev/sdb2 | grep uperblock

fsck /dev/sdb2 #We could try to repair the partition directly => BUT, we are looking for the superblocks

mkfs.ext4 -n /dev/sdb2 #(ATTENTION: be sure to use -n!!!!) => now we see the superblocks

fsck -b 40961 /dev/sdb2 #after -b insert a superblock from above

fsck /dev/sdb2