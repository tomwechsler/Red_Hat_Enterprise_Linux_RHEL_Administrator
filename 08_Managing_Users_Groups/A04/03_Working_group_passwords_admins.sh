#Working on the alma system

#Add a new group named 'ops' with root privileges
sudo groupadd ops

#Run a command with the group ID of 'ops'
newgrp ops

#Set the password for 'ops' group with root privileges
sudo gpasswd ops

#Run a command with the group ID of 'ops' after setting the password
newgrp ops

#Print the user identifier, group identifier, and groups for 'tom'
id tom

#With the group password set, the group changes to a self-service model

#Add 'tom' user to 'ops' group with root privileges
sudo gpasswd -a tom ops

#Set 'tom' user as an administrator of 'ops' group with root privileges
sudo gpasswd -A tom ops

#Add 'joe' to 'ops' group
gpasswd -a joe ops

#Get the 'ops' group entry from the group database
getent group ops

#Search for 'ops' in the shadow file with root privileges
sudo grep ops /etc/gshadow