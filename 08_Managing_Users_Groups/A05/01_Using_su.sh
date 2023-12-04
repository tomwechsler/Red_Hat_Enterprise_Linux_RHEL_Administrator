#Working on the alma system

#Display password status for 'root' user with root privileges
sudo passwd -S root

#Set the password for 'root' user with root privileges
sudo passwd root

#Print the user identifier, group identifier, and groups for the current user
id

#Switch to the 'root' user
su

#Print the user identifier, group identifier, and groups for the current user after switching to 'root'
id

#Display process status in full format
ps -f

#Print the name of the current directory
pwd

#Print the username of the current user
echo $USER

#Exit the current shell
exit

#Switch to the 'root' user and simulate a full login shell
su -

#Print the name of the current directory after switching to 'root'
pwd

#Print the user identifier, group identifier, and groups for the current user after switching to 'root'
id

#Print the username of the current user after switching to 'root'
echo $USER

#Display process status in full format after switching to 'root'
ps -f

#Exit the current shell after switching to 'root'
exit

#Add a new user named 'mary' with root privileges
sudo useradd mary

#Switch to the 'mary' user and simulate a full login shell with root privileges
sudo su - mary

#Print the name of the current directory after switching to 'mary'
pwd

#Lock the root password
sudo passwd -l root