#Working on the rhel system

sudo -i

vdo growLogical --name=vdo1 --vdoLogicalSize=80G

vdo status --name=vdo1 | grep 'Logical size'

