#Working on the redhat system

sudo -i

#List all active timers and their next run time
systemctl list-timers

#Display the contents of the 'logrotate.timer' unit file
systemctl cat logrotate.timer

#Display the manual page for the 'systemd.timer' file format and search for 'Accuracy'
man 5 systemd.timer
/Accur

#Edit the 'backup.service' unit file with full content and force the changes
systemctl edit backup.service --full --force

#Verify the syntax and validity of the 'backup.service' unit file
systemd-analyze verify /etc/systemd/system/backup.service

#Edit the 'backup.service' unit file with an error and force the changes
#Note: This is an example of how to intentionally introduce an error for testing purposes
systemctl edit backup.service --full --force

#Verify the syntax and validity of the 'backup.service' unit file with the introduced error
systemd-analyze verify /etc/systemd/system/backup.service

#Undo the changes made to the 'backup.service' unit file
systemctl edit backup.service --full --force

#Verify the syntax and validity of the 'backup.service' unit file after undoing the changes
systemd-analyze verify /etc/systemd/system/backup.service

#Edit the 'backup.timer' unit file with full content and force the changes
systemctl edit backup.timer --full --force

#Verify the syntax and validity of the 'backup.timer' unit file
systemd-analyze verify /etc/systemd/system/backup.timer

#Enable the 'backup.timer' unit to start at boot time
systemctl enable backup.timer

#Reboot the system to apply the changes
reboot

#List all active timers and their next run time
systemctl list-timers