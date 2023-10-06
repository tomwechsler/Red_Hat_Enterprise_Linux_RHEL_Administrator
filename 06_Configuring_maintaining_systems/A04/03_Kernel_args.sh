#Working on the redhat system

sudo -i

#Display information about all boot entries
grubby --info=ALL

#Add the systemd.unit=graphical.target argument to all boot entries
grubby --update-kernel=ALL --args="systemd.unit=graphical.target"

#Display information about all boot entries again to verify the changes
grubby --info=ALL

#Remove the systemd.unit=graphical.target argument from all boot entries
grubby --update-kernel=ALL --remove-args="systemd.unit=graphical.target"

#Display information about all boot entries again to verify the changes
grubby --info=ALL