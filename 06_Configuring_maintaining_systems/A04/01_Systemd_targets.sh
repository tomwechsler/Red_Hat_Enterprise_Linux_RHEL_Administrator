#Working on the redhat system

sudo -i

#Display the current runlevel
runlevel

#Display the man page for runlevel
man runlevel

#List all active systemd targets
systemctl list-units --type target --state active