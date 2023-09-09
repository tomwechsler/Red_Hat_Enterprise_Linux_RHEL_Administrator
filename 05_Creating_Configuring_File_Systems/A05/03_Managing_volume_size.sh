#Working on the rhel system

sudo -i

#Extend the volume group
sudo vgextend myvg /dev/sdX

#Expand the VDO drive
#Replace 100G with the desired additional logical size of the VDO drive
sudo lvextend --type vdo -L +100G -n mylv myvg

#Grow the file system on the VDO drive
sudo xfs_growfs /mnt/myVDO

df -h /my/vdo

vdo --human-readable

du -sh /my/vdo