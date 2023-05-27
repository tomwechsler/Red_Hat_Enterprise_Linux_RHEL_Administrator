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



