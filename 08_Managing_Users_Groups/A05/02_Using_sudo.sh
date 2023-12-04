#Working on the alma system

#Open a new register and start a root session
sudo -i

#Back to the first register
sudo visudo
mary ALL (root) ALL #This line is not correct (Quit with Q)

sudo visudo #Will not work anymore

#Switch to second register
visudo #Delete the line

#Back to the first register
sudo visudo #Will work again

#Check the syntax of the sudoers file '/etc/sudoers.d/helpdesk' with root privileges
sudo visudo -f /etc/sudoers.d/helpdesk

#Add a new line to the sudoers file allowing 'helpdesk' group to run 'passwd' command as 'root', but not for 'root' user
%helpdesk ALL=(root) /usr/bin/passwd, !/usr/bin/passwd root

#Add a new group named 'helpdesk' with root privileges
sudo groupadd helpdesk

#Add 'mary' user to 'helpdesk' group with root privileges
sudo usermod -aG helpdesk mary

#Set the password for 'mary' user with root privileges
sudo passwd mary

#Switch to the 'mary' user and simulate a full login shell
su - mary

#List the allowed (and forbidden) commands for the 'mary' user on the current host
sudo -l

#Change the password for 'user2' user with root privileges
sudo passwd user2

#Change the password for 'root' user with root privileges will not work
sudo passwd root