#Working on the rhel system

sudo dnf install vdo kmod-kvdo

sudo systemctl enable --now vdo.service

modprobe kvdo

sudo -i

vdo create --name=vdo1 --device=/dev/sda --vdoLogicalSize=40G

vdo status --name=vdo1 | grep -E '(Dedup|Compression)'

mkfs.xfs -K /dev/mapper/vdo1