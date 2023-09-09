#Working on the rhel system

#Install the VDO package
sudo dnf install -y vdo kmod-kvdo lvm2

#Load the VDO module
sudo modprobe kvdo

#Create a physical volume
#Replace /dev/sdX with the desired block device
sudo pvcreate /dev/sdX

#Create a volume group
sudo vgcreate myvg /dev/sdX

#Create a VDO drive
#Replace 100G with the desired logical size of the VDO drive
sudo lvcreate --type vdo -L 40G -n mylv myvg

#Format the VDO drive with a file system of your choice (e.g. xfs)
sudo mkfs.xfs -K /dev/myvg/mylv