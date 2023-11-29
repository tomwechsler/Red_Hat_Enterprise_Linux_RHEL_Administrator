#Working on the rhel system

#Switch to the root user
sudo -i

#Print the user identifier, group identifier, and groups for 'user1'
id user1

#Modify the 'user1' account with a new comment (-c), new primary group ID (-g), and add to 'wheel' group (-aG)
usermod -c "user 1" -g 100 -aG wheel user1

#Print the user identifier, group identifier, and groups for 'user1' after modification
id user1

#Find files in /home and /var directories that don't belong to any user
find /home /var -nouser

#Delete the 'user1' account
userdel user1

#Find files in /home and /var directories that don't belong to any user after deleting 'user1'
find /home /var -nouser

#Find and delete files in /home and /var directories that don't belong to any user
find /home /var -nouser -delete

#Delete the 'user2' account and its home directory (-r)
userdel -r user2

#Find files in /home and /var directories that don't belong to any user after deleting 'user2'
find /home /var -nouser