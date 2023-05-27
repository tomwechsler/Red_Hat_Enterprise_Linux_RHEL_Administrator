#Working on rhel

#Check the config file
less /etc/rsyslog.conf

#The man pages
man 3 syslog

man 5 rsyslog.conf

#We create our own log file
sudo vim /etc/rsyslog.d/my.conf

local0.warn /var/log/my.log

#Save and exit

#Restart the service
sudo systemctl restart rsyslog.service

#List the log files
ls /var/log

#Create a log entry
logger -p local0.warn "hello"

sudo tail /var/log/my.log

#List the log files
ls /var/log

#The messages log file
sudo tail /var/log/messages



