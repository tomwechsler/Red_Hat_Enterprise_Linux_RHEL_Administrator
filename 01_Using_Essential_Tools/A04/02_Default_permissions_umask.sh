#Working on the rhel system

#Displays the contents of the 'octal.txt' file
cat octal.txt

#Display the current umask value
umask

#Set the umask value to 000 (no restrictions on permissions)
umask 0

#Create an empty file named 'file10'
touch file10

#List detailed information about 'file10' to verify its permissions
ls -l file10

#Create a directory named 'demo1'
mkdir demo1

#List detailed information about the 'demo1' directory to verify its permissions
ls -ld demo1

#Set the umask value to 077 (restrict permissions to owner only)
umask 077

#Display the current umask value
umask

#Create an empty file named 'file20'
touch file20

#List detailed information about 'file20' to verify its permissions
ls -l file20

#Change the permissions of 'file_perms' to 666 (rw-rw-rw-) and display a message for each file processed
chmod -v 666 file_perms

#Alternatively, add write permission for others to 'file_perms' and display a message for each file processed
chmod -v o+w file_perms

#Create a directory named 'demo2'
mkdir demo2

#List detailed information about the 'demo2' directory to verify its permissions
ls -ld demo2