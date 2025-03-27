#Working on the redhat system

sudo -i

#Display the manual page for the 'systemd.timer' file format
man 5 systemd.timer

#List all installed timer units
systemctl list-unit-files --type=timer

#Display the list of active timers
systemctl list-timers

#Check for available updates using 'yum'
yum check-update

#Display the first two lines of the output of 'yum check-update'
yum check-update | head -n2

#Display the contents of the 'dnf-makecache.timer' unit file
systemctl cat dnf-makecache.timer

#Display the status of the 'dnf-makecache.service' unit
systemctl status dnf-makecache.service

#List all active timers and their next run time
systemctl list-timers