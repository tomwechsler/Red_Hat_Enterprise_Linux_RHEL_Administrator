#Working on rhel

#Investigate journalctl
sudo journalctl

sudo journalctl -n5

sudo journalctl --since yesterday

sudo journalctl --since -6h --unit sshd

#The log files (no journal folder - journalctl not persistent)
ls /var/log

#Check the config file
sudo grep Storage /etc/systemd/journald.conf 

#Change the settings
sudo sed -i 's/#Storage=auto/Storage=persistent/' /etc/systemd/journald.conf

#Check the config file
sudo grep Storage /etc/systemd/journald.conf

#Restart the service
sudo systemctl restart systemd-journald

#The log files (now we have a journal folder - journalctl will be persistent)
ls /var/log

#If we have a lot of files we can select
sudo journalctl --list-boots

#Choose Nr. 0
sudo journalctl -b 0

#If we would have more files
sudo journalctl -b -1

