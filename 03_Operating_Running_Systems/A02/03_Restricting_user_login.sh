#Working on the rhel system (two sessions)

sudo touch /etc/nologin

#Try to login from the second session
vagrant ssh rhel

sudo rm /etc/nologin

#Try to login from the second session
vagrant ssh rhel

exit

#This will create the /run/nologin files
sudo shutdown -r +5 "Rebooting in 5 minutes" 

cat /run/nologin

#Try to login from the second session
vagrant ssh rhel

sudo shutdown -c

#Try to login from the second session
vagrant ssh rhel

exit



