#Working on the rhel system

#List the files and directories in the current directory
ls

#List detailed information about 'file1'
ls -l file1

#Display user and group ID information for the current user
id

#Change the owner of 'file1' to root
sudo chown root file1

#List detailed information about 'file1' to verify the ownership change
ls -l file1

#Change the owner and group of 'file1' to root
sudo chown root:root file1

#List detailed information about 'file1' to verify the ownership change
ls -l file1

#Change the owner of 'file1' to vagrant and keep the group unchanged
sudo chown vagrant: file1

#List detailed information about 'file1' to verify the ownership change
ls -l file1

#Change the group of 'file1' to root
sudo chgrp root file1

#List detailed information about 'file1' to verify the group change
ls -l file1

#This set's user and group vagrant
sudo chown vagrant: file1

ls -l file1

sudo chgrp root file1

ls -l file1