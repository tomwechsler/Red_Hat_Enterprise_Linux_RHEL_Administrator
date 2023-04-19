#Working on alma

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



Journalctl ships as part of the systemd eco-system and becomes an extremely
useful tool with many practical options.

The journal logs are stored in memory and may not persists as disk files. The
default setting will persist the log if the directory /var/log/journal exists. To
ensure journals are persisted we can change this to "persistent". To ensure they
are not persisted the setting is "volatile".