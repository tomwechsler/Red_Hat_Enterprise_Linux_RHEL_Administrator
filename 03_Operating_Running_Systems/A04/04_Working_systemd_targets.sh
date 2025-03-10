#Working on the rhel system

#Runlevel   Target
#1 	        rescue.target
#2 	        multi-user.target
#3 	        multi-user.target
#4 	        multi-user.target
#5 	        graphical.target
#6 	        reboot.target

#List all active systemd targets
systemctl list-units --type target

#Display the default target
systemctl get-default 

#Set the default target to graphical.target
sudo systemctl set-default graphical.target

#Display the default target to verify the change
systemctl get-default

#Set the default target to multi-user.target
sudo systemctl set-default multi-user.target

#Switch to the graphical.target immediately
sudo systemctl isolate graphical.target

#Switch to the multi-user.target immediately
sudo systemctl isolate multi-user.target

#Power off the system
sudo poweroff

#Edit the Linux entry to boot into rescue mode
systemd.unit=rescue.target

#Display listening TCP ports and their status
ss -ntl

#Display network interfaces and their status
ip a sh

#Switch to the multi-user.target immediately
systemctl isolate multi-user.target

#Display listening TCP ports and their status again
ss -ntl

#Display network interfaces and their status again
ip a sh