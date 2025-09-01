#Working on the the rhel system

#Do not run on a production system!

#Important => working as root
sudo -i

#Create a new user named 'fred' with a home directory
useradd -m fred

#List the SELinux context of the /etc/shadow file
ls -Z /etc/shadow

#Change the SELinux type of /etc/shadow to user_home_t
chcon -t user_home_t /etc/shadow

#List the SELinux context of the /etc/shadow file again to verify the change
ls -Z /etc/shadow

#Switch to the user 'fred' with a login shell
sudo -i -u fred

#Restore the default SELinux context for /etc/shadow and display verbose output
restorecon -v /etc/shadow

#Switch to the user 'fred' with a login shell again
sudo -i -u fred

#Exit the current shell session
exit

#Exit the current shell session
exit

#Switch to the root user with a login shell
sudo -i