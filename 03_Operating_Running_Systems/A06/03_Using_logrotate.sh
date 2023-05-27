#Working on rhel

#Our log file
ls -l /var/log/my.log

#Create a log entry
logger -p local1.warn "test message"

#Our log file
ls -l /var/log/my.log

#Create a log entry
logger -p local1.warn "test message"

#Our log file
ls -l /var/log/my.log

#Create a log entry
logger -p local1.warn "test message"

#The logrotate.d directory
sudo vim /etc/logrotate.d/TABTAB

#Create the conf file
sudo vim /etc/logrotate.d/my


/var/log/my.log 
{

 weekly
 rotate 4
 dateext
 compress
 size 100
 copytruncate 
}

#For demo purpose we set the size to 100 (in real world - 100M, 500M, etc.)
#Save and exit

#Logrotate
sudo logrotate /etc/logrotate.conf

#Lets check
ls -l /var/log/my*

#The man pages (entry for copyandtruncate)
man 5 logrotate.conf



