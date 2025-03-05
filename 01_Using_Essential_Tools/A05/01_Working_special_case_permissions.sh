#Working on the rhel system

#Create an empty file named 'log'
touch log

#List detailed information about 'log'
ls -l log

#Display the contents of 'log'
cat log

#Change the permissions of 'log' to write-only for the user
chmod -v u=w log

#Permission denied: Attempt to display the contents of 'log'
cat log

#This will work: Append the string 'hello' to 'log'
echo hello >> log

#Display the contents of 'log' with superuser privileges
sudo cat log

#Create a directory named 'logs' with permissions 155 (r-xr-x--x)
mkdir -m 155 logs

#Change the current directory to 'logs'
cd logs

#Permission denied: Attempt to list the contents of 'logs'
ls

#Change the current directory to the parent directory
cd ..

#Change the permissions of 'logs' to 0355 (r-xr-xr-x) and display a message for each file processed
chmod -v 0355 logs

#Append the string 'test' to 'logs/file'
echo test >> logs/file

#If you know the paths it works: Display the contents of 'logs/file'
cat logs/file

#List the contents of the 'logs' directory
ls logs