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

#Display disk usage in human-readable format for the /my/vdo directory
df -h /my/vdo

#Display VDO (Virtual Data Optimizer) statistics in human-readable format
vdostats --human-readable

#Display the total disk usage of the /my/vdo directory in a human-readable format
du -sh /my/vdo