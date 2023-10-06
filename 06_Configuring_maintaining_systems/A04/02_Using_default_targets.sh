#Working on the redhat system

sudo -i

#Display the contents of the chronyd service file
systemctl cat chronyd

#Get the current default target
systemctl get-default

#Set the default target to graphical.target
systemctl set-default graphical.target

#Verify that the default target has been set to graphical.target
systemctl get-default

#Switch to the graphical.target
systemctl isolate graphical.target

#Check the current runlevel
runlevel

#List all active target units
systemctl list-units --type target --state active