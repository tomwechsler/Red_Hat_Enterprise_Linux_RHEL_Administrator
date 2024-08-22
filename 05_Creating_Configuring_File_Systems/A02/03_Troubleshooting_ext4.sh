#Working on the rhel system


#Write random data to the /dev/sdb partition, starting at the 10th kilobyte, with a block size of 1 kilobyte and a total of 4 kilobytes
sudo dd if=/dev/urandom of=/dev/sdb bs=1k seek=10 count=4k

lsblk

dump2fs /dev/sde2 | grep uperblock #(everything is ok with /dev/sde2 - I write "uperblock" because I don't know if it's upper or lower case)

dump2fs /dev/sdb | grep uperblock

fsck /dev/sdb #We could try to repair the partition directly => BUT, we are looking for the superblocks

mkfs.ext4 -n /dev/sdb #(ATTENTION: be sure to use -n!!!!) => now we see the superblocks

fsck -b 40961 /dev/sdb #after -b insert a superblock from above

fsck /dev/sdb