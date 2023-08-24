lvs

vgchange -a y vg1

lvs

mkfs.xfs /dev/vg1/lv1

#This works too
mkfs.xfs /dev/mapper/vg1-lv2

mkdir -p /lv/lv{1,2}

mount /dev/vg1/lv1 /lv/lv1

mount /dev/vg1/lv2 /lv/lv2

lvs

find /usr/share/doc -name '*.html' -exec cp {} /lv/lv1 \;

ls /lv/lv1/

find /usr/share/doc -name '*.html' -exec cp {} /lv/lv2 \;

lvs

vgs vg1

df -h /lv/lv1

lvextend -r -l +100%FREE vg1/lv1

df -h /lv/lv1

vgs vg1

vgextend -v vg1 /dev/loop1p3

vgs vg1

lvextend -r -L +104M vg1/lv2

df -h /lv/lv2

ls /lv/lv1/

ls /lv/lv2/