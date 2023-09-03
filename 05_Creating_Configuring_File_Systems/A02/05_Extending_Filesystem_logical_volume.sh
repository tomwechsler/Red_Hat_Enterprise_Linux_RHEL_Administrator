#Working on the rhel system

sudo -i

vgs

df -h /

vgeextend rhel /dev/sdc

vgs rhel

lvextend -r -l +100%FREE rhel/root

df -h /

vgs
