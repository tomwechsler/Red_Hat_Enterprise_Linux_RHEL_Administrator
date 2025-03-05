#Working on the redhat system

sudo -i

#Tracking the time synchronization status
chronyc tracking

#Nothing happens
systemctl restart chronyd && watch chronyc tracking

vim /etc/chrony.conf

#Add iburst at the end of the line starts with pool

#We also should edit the my.sed file

#Display the chrony.conf man page
man 5 chrony.conf

#Search for the "iburst" option in the man page
/iburst

#Restart the chronyd service and watch the tracking information
systemctl restart chronyd && watch chronyc tracking

#Display the sources used by chronyd
chrony sources

#Display verbose information about the sources used by chronyd
chronyc source -v

#Start the chronyc command-line interface
chronyc

#Display the sources used by chronyd
sources

#Display the tracking information for the sources used by chronyd
tracking

#Exit the chronyc command-line interface
quit