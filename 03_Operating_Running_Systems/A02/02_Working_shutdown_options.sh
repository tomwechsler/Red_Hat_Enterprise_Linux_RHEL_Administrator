#Working on the rhel system

shutdown --help

-H:      Halt is bring down to BIOS prompt 
-h / -P: Poweroff , and actual full shutdown
-r:      Reboot system 
-c:      Cancel

man shutdown

#We need privileges
shutdown -h +20 "by by folks" 

#Repeat the last command with superuser privileges
sudo !!

#Cancel any scheduled shutdown
sudo shutdown -c

#Schedule a system reboot at 17:00 with a message
sudo shutdown -r 17:00 "System going down at 5 pm"

#Cancel any scheduled shutdown
sudo shutdown -c

#But does it really works?
sudo shutdown -h +1

vagrant up rhel