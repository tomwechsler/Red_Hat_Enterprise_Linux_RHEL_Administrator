#Working on the rhel system

#Runlevel   Target
#1 	        rescue.target
#2 	        multi-user.target
#3 	        multi-user.target
#4 	        multi-user.target
#5 	        graphical.target
#6 	        reboot.target

systemctl list-units --type target

systemctl get-default 

sudo systemctl set-default graphical.target

systemctl get-default

sudo systemctl set-default multi-user.target

sudo systemctl isolate graphical.target

sudo systemctl isolate multi-user.target

sudo poweroff

#Edit linux entry
systemd.unit=rescue.target

ss -ntl

ip a sh

systemctl isolate multi-user.target

ss -ntl

ip a sh


In systemd targets replace runlevels that were previously used in SysV Init from
RHEL 6 and earlier. The default link is used to point to the correct target. A
target is a group service that should start automatically.

To boot to a non-default target, use the GRUB boot editor as seen earlier.