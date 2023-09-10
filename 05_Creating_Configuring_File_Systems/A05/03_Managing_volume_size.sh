#Working on the rhel system

sudo -i

#Extend the volume group
sudo vgextend myvg /dev/sdb2

#Expand the VDO drive
#Replace 100G with the desired additional logical size of the VDO drive
sudo lvextend --type vdo -l 100%FREE myvg/mylv

lvextend -l 100%FREE myvg/vpool0

#Grow the file system on the VDO drive
sudo xfs_growfs /my/vdo

df -h /my/vdo

vdo --human-readable

du -sh /my/vdo