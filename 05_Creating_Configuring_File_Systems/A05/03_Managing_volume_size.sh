#Working on the rhel system

sudo -i

vdo status

vdo status | less

vdo status | grep -i "logical size"

vdo growLogical --name=vdo1 --vdoLogicalSize=80G

vdo status | grep -i "logical size"

df -h /my/vdo

xfs_growfs /dev/mapper/vdo1

df -h /my/vdo

vdo --human-readable

du -sh /my/vdo