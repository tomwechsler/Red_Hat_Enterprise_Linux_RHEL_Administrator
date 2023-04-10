#Working on the rhel system

id

sudo usermod -aG wheel vagrant

id vagrant

id

#Leave the SSHs Session
exit

vagrant ssh rhel

id

touch gid_file

ls -l gid_file

newgrp wheel # opens new shell 

touch new_gid_file

ls -l new_gid_file

exit # return to previous shell 

#For Vagrant boxes root does not have a password, for school purposes we will assign a password
sudo passwd root

su

pwd

exit

#The same as su -l
su -

pwd



User and group management is a topic for another course, but if we want to
observe the behavior of group changes, we can look at simple example now. 
Adding a user to a group required the user to logout and in again.

The primary GID of the user is used to control the group ownership of new files.
To switch group IDs we have the newgrp command or the link sg. Always exit out
of the new shell when you are finished.

The su command can be used to switch user accounts. A new shell is created
and you enter the password of the target user. If the current target password is
unknown we can use sudo su to allow change without entering the password. Or,
set the target password.