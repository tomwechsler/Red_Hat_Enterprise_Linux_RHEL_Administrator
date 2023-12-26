#Working on alma (with two register vagarnt/root)

#Display the user identity (root)
id

#List the '/etc/shadow' file with its security context
ls -Z /etc/shadow

#Change the SELinux context of the '/etc/shadow' file to 'user_home_t' with root privileges
sudo chcon -t user_home_t /etc/shadow

#List the '/etc/shadow' file with its new security context
ls -Z /etc/shadow

#Display the commands the current user can execute with sudo
sudo -l

#Display the current SELinux mode (root)
getenforce

#Set the SELinux mode to permissive with root privileges (root)
setenforce 0

#Display the commands the current user can execute with sudo
sudo -l

#Display the system logs in real time (root)
journalctl -f

#Display the commands the current user can execute with sudo
sudo -l

#Restore the SELinux context of the '/etc/shadow' file with verbose output (root)
restorecon -v /etc/shadow

#Set the SELinux mode to enforcing with root privileges (root)
setenforce 1

#Display the commands the current user can execute with sudo
sudo -l