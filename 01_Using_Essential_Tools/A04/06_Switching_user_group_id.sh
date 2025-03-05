#Working on the rhel system

#Display user and group ID information for the current user
id

#Add the user 'vagrant' to the 'wheel' group
sudo usermod -aG wheel vagrant

#Display user and group ID information for the 'vagrant' user
id vagrant

#Display user and group ID information for the current user again
id

#Leave the SSH session
exit

#SSH back into the rhel system as the 'vagrant' user
vagrant ssh rhel

#Display user and group ID information for the current user
id

#Create an empty file named 'gid_file'
touch gid_file

#List detailed information about 'gid_file' to verify its permissions
ls -l gid_file

#Switch to a new shell with the 'wheel' group as the primary group
newgrp wheel

#Create an empty file named 'new_gid_file'
touch new_gid_file

#List detailed information about 'new_gid_file' to verify its permissions
ls -l new_gid_file

#Exit the new shell and return to the previous shell
exit

#For Vagrant boxes, root does not have a password. Assign a password to the root user for school purposes
sudo passwd root

#Switch to the root user
su

#Display the current working directory
pwd

#Exit the root shell
exit

#Switch to the root user with a login shell (same as 'su -l')
su -

#Display the current working directory
pwd

#Exit the root shell
exit