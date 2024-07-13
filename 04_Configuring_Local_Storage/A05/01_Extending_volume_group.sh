#List the current logical volumes
lvs

#Activate all logical volumes in volume group vg1
vgchange -a y vg1

#List the logical volumes again to verify activation
lvs

#Format the logical volume lv1 in volume group vg1 with the XFS filesystem
mkfs.xfs /dev/vg1/lv1

#Format the logical volume lv2 in volume group vg1 with the XFS filesystem. This syntax uses the mapper path.
mkfs.xfs /dev/mapper/vg1-lv2

#Create directories for mounting lv1 and lv2
mkdir -p /lv/lv{1,2}

#Mount the logical volume lv1 to /lv/lv1
mount /dev/vg1/lv1 /lv/lv1

#Mount the logical volume lv2 to /lv/lv2
mount /dev/vg1/lv2 /lv/lv2

#List the logical volumes to verify the setup
lvs

#Find all HTML files in /usr/share/doc and copy them to /lv/lv1
find /usr/share/doc -name '*.html' -exec cp {} /lv/lv1 \;

#List the contents of /lv/lv1 to verify the copied files
ls /lv/lv1/

#Find all HTML files in /usr/share/doc and copy them to /lv/lv2
find /usr/share/doc -name '*.html' -exec cp {} /lv/lv2 \;

#List the logical volumes to verify the setup
lvs

#Display volume group information for vg1
vgs vg1

#Display disk usage in human-readable format for /lv/lv1
df -h /lv/lv1

#Extend the logical volume lv1 to use all free space in the volume group and resize the filesystem
lvextend -r -l +100%FREE vg1/lv1

#Display disk usage again for /lv/lv1 to verify the extension
df -h /lv/lv1

#Display volume group information for vg1
vgs vg1

#Extend the volume group vg1 by adding the physical volume /dev/loop1p3
vgextend -v vg1 /dev/loop1p3

#Display volume group information for vg1 to verify the extension
vgs vg1

#Extend the logical volume lv2 by 104MB and resize the filesystem
lvextend -r -L +104M vg1/lv2

#Display disk usage for /lv/lv2 to verify the extension
df -h /lv/lv2

#List the contents of /lv/lv1 to verify the files
ls /lv/lv1/

#List the contents of /lv/lv2 to verify the files
ls /lv/lv2/