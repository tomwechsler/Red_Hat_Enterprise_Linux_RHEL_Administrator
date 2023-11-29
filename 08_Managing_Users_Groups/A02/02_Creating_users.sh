#Working on the rhel system

#Switch to the root user
sudo -i

#Add a new user named 'user1'
useradd user1

#Print the user identifier, group identifier, and groups for 'user1'
id user1

#Get the 'user1' entry from the passwd database
getent passwd user1

#Display or change the default values in the useradd configuration file
useradd -D

#Display the contents of the useradd configuration file
cat /etc/default/useradd

#Search for 'CREATE_HOME' and 'USERGROUPS' in the login.defs file
grep -E '^(CREATE_HOME|USERGROUPS)' /etc/login.defs

#Add a new user named 'user2' with no home directory (-M), no user group (-N), a comment (-c), and add to 'wheel' group (-G)
useradd -M -N -c "user 2" -G wheel user2

#Print the user identifier, group identifier, and groups for 'user2'
id user2

#Get the 'user2' entry from the passwd database
getent passwd user2

#List the contents of the /home directory
ls /home