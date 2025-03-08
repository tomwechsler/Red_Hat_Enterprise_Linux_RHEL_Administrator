#Working on the rhel system

#Display the path of the 'reboot' executable
which reboot

#List detailed information about the 'reboot' executable
ls -l $(which reboot)

#List detailed information about the 'poweroff' executable
ls -l $(which poweroff)

#Power off the system using systemd
sudo systemctl poweroff

#Reboot the system using systemd
sudo systemctl reboot