#Working on the rhel system

#Display the contents of the passwd file which contains user account information
cat /etc/passwd

#Search for 'vagrant' in the passwd file
cat /etc/passwd | grep vagrant

#Display the manual page for the passwd file format
man 5 passwd

#Display the contents of the nsswitch.conf file which configures the Name Service Switch
less /etc/nsswitch.conf

#Get entries from Name Service Switch libraries, in this case, the passwd database
getent passwd

#Get the 'vagrant' user entry from the passwd database
getent passwd vagrant

#Get the username and user ID fields from the passwd database
getent passwd | cut -d ":" -f 1,3

#Search for 'vagrant' in the passwd file and print the username and user ID
awk -F: '/vagrant/{ print $1 ":" $3 }' /etc/passwd