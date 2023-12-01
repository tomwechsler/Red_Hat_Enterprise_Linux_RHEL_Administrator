#Working on the rhel system

#Display the contents of the shadow file which contains encrypted user password information
cat /etc/shadow

#Display the contents of the passwd file which contains user account information
cat /etc/passwd

#Display the contents of the shadow file with root privileges
sudo cat /etc/shadow

#Display the manual page for the shadow file format
man 5 shadow

#Display the contents of the shadow file with root privileges
sudo cat /etc/shadow

#Display the date for '01 Jan 1970' which is the start of Unix time
date -d '01 Jan 1970'

#Display the date for '01 Jan 1970' plus 18625 days
date -d '01 Jan 1970 18625 days'

#Get the 'vagrant' user entry from the shadow database
sudo getent shadow vagrant

#Display password aging information for 'vagrant' user
chage -l vagrant