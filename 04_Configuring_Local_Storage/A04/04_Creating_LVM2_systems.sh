#It is easier to work as root
sudo -i

pvs

pvcreate /dev/loop1p2

pvs

vgcreate -v vg1 /dev/loop1p2

vgdisplay vg1

vgremove vg1

pvremove /dev/loop1p2

pvcreate --TABTAB /dev/loop1p2

pvcreate --pvmetadatacopies 2 /dev/loop1p2

vgcreate -v vg1 /dev/loop1p2

vgdisplay vg1

vgremove vg1

pvremove /dev/loop1p2

pvs

vgcreate -v -s 8m vg1 /dev/loop1p2

vgdisplay vg1

lvs vg1

lvcreate -n lv1 -L 100M vg1

lvcreate -n lv2 -l 13 vg1 

lvs vg1