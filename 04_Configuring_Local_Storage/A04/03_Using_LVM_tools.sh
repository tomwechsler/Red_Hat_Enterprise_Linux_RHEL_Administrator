#Managing LVM Storage (Physical Volumes, Volume Groups, and Logical Volumes)

#Lists all Physical Volumes (PVs) on the system
sudo pvs

#Intended for shell auto-completion, showing commands related to 'pv'
pv TABTAB

#Lists all Volume Groups (VGs) on the system
sudo vgs

#Displays detailed information about all Volume Groups
sudo vgdisplay

#Lists all Logical Volumes (LVs) in all Volume Groups
sudo lvs

#Displays detailed information about all Logical Volumes
sudo lvdisplay