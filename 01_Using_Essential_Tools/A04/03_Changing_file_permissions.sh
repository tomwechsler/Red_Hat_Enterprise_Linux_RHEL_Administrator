#Working on the rhel system

#Set the default permissions for newly created files to 002 (rw-rw-r--)
umask 002

#Create a new file named 'file_perms'
touch file_perms

#List the permissions of the 'file_perms' file
ls -l file_perms 

#Change the permissions of 'file_perms' to 666 (rw-rw-rw-), and display a message for each file processed
chmod -v 666 file_perms #or

#Add write permission for all users (user, group, others) to 'file_perms', and display a message for each file processed
chmod -v a+w file_perms

#Set the default permissions for newly created files to 007 (rw-rw----)
umask 007

#Create a directory named 'upper' and two subdirectories 'dir1' and 'dir2' within it
mkdir -p upper/{dir1,dir2}

#List the permissions of the 'upper' directory and its subdirectories recursively
ls -lR upper

#Create a new file named 'file' in each of the subdirectories 'dir1' and 'dir2'
touch upper/{dir1,dir2}/file

#List the permissions of the 'upper' directory and its subdirectories recursively
ls -lR upper

#Add execute permission for all users (user, group, others) to the 'upper' directory and its subdirectories recursively, and display a message for each file processed
chmod -vR a+X upper

#Add write permission for all users (user, group, others) to the 'upper' directory and its subdirectories recursively, and display a message for each file processed
chmod -vR +w upper

#Add write permission for all users (user, group, others) to the 'upper' directory and its subdirectories recursively, and display a message for each file processed
chmod -vR a+w upper