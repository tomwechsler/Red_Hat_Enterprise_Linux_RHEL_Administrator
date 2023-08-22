#It is easier to work as root
sudo -i

sudo lvcreate -n lv1 -L 100M vg1

sudo lvcreate -n lv2 -l 12 vg1 

sudo lvs vg1