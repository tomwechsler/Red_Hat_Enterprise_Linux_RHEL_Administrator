#Working on the rhel system

sudo -i

vgs

df -h /

vgeextend rhel_rhel /dev/sdc

vgs rhel_rhel

lvextend -r -l +100%FREE rhel_rhel/root

df -h /

vgs
