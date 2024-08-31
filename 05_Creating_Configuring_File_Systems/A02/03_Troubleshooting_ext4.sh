#Working on the rhel system

#Mount /dev/sdc to /mnt/sdc
sudo mount /dev/sdc /mnt/sdc

#Unmount /dev/sdc
sudo umount /mnt/sdc

#Write random data to the /dev/sdc partition, starting at the 10th kilobyte, with a block size of 1 kilobyte and a total of 4 kilobytes
sudo dd if=/dev/urandom of=/dev/sdc bs=1k seek=10 count=4k

lsblk

#(everything is ok with /dev/sdc - I write "uperblock" because I don't know if it's upper or lower case)
sudo dumpe2fs /dev/sdb | grep uperblock

#Some superblocks are corrupted
sudo dumpe2fs /dev/sdc | grep uperblock 

#We could try to repair the partition directly => BUT, we are looking for the superblocks
sudo fsck /dev/sdc

#(ATTENTION: be sure to use -n!!!!) => now we see the superblocks
sudo mkfs.ext4 -n /dev/sdc 

#after -b insert a superblock from above
sudo fsck -b 40961 /dev/sdc 

#Another check
sudo fsck /dev/sdc