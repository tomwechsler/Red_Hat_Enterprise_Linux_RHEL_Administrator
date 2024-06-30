#It is easier to work as root
sudo -i

#Lists all Physical Volumes (PVs) before creation
pvs

#Creates a Physical Volume on /dev/loop1p2
pvcreate /dev/loop1p2

#Lists all Physical Volumes (PVs) after creation
pvs

#Creates a Volume Group named vg1 with verbose output on /dev/loop1p2
vgcreate -v vg1 /dev/loop1p2

#Displays detailed information about Volume Group vg1
vgdisplay vg1

#Removes the Volume Group named vg1
vgremove vg1

#Removes the Physical Volume on /dev/loop1p2
pvremove /dev/loop1p2

#Intended for shell auto-completion, showing options for 'pvcreate'
pvcreate --TABTAB /dev/loop1p2

#Creates a Physical Volume on /dev/loop1p2 with 2 copies of metadata
pvcreate --pvmetadatacopies 2 /dev/loop1p2

#Creates a Volume Group named vg1 with verbose output on /dev/loop1p2 again
vgcreate -v vg1 /dev/loop1p2

#Displays detailed information about Volume Group vg1 again
vgdisplay vg1

#Removes the Volume Group named vg1 again
vgremove vg1

#Removes the Physical Volume on /dev/loop1p2 again
pvremove /dev/loop1p2

#Lists all Physical Volumes (PVs) to confirm removal
pvs

#Creates a Volume Group named vg1 with a physical extent size of 8 MB on /dev/loop1p2
vgcreate -v -s 8m vg1 /dev/loop1p2

#Displays detailed information about Volume Group vg1 with the new extent size
vgdisplay vg1

#Lists all Logical Volumes in Volume Group vg1 before creation
lvs vg1

#Creates a Logical Volume named lv1 with a size of 100 MB in Volume Group vg1
lvcreate -n lv1 -L 100M vg1

#Creates a Logical Volume named lv2 with extents covering roughly 13% of vg1
lvcreate -n lv2 -l 13 vg1 

#Lists all Logical Volumes in Volume Group vg1 after creation
lvs vg1