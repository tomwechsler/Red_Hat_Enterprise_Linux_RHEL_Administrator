#Working on the rhel system

#Change the permissions of the /admin directory to 1770 (rwxrwx--T) and display a message for each file processed
sudo chmod -v 1770 /admin

#List the details of the /admin directory, including permissions and special bits
ls -ld /admin

#Switch to the user 'tux'
sudo su - tux

#Display the user ID and group ID information for the current user
id

#Change the current directory to /admin
cd /admin

#Exit the current shell session (log out from the 'tux' user)
exit

#List the files and directories in the current directory with detailed information
ls -l

#Set the default file creation permissions to 007 (rw-rw----)
umask 007

#Create an empty file named 'file1'
touch file1

#List the details of 'file1' to verify its permissions
ls -l file1

#Change the group ID on execution (SGID) bit of the /admin directory and display a message for each file processed
sudo chmod -v g+s /admin

#Create an empty file named 'file2'
touch file2

#The file2 is created with the group of the parent directory
ls -l

#Switch to the root user
sudo -i

#Set the default file creation permissions to 007 (rw-rw----)
umask 007

#Create an empty file named 'root2' in the /admin directory
touch /admin/root2

#Exit the current shell session (log out from the root user)
exit

#The root2 file is created with the group of the parent directory
ls -l