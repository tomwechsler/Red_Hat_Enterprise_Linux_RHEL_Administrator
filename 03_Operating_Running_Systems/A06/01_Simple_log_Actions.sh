#Working on rhel

#Check for all services
systemctl status

#Check for rsyslog
systemctl status rsyslog.service

#The logs
ls /var/log

#The content of the messages file
sudo tail /var/log/messages 

sudo tail -n4 /var/log/messages

#Watch the journalctl
sudo journalctl -f

#OPEN A NEW TERMINAL
vagrant ssh rhel

#Create a log entry
logger -p local0.warning "help"

logger -p local0.warn "help"

#Back on the first terminal
sudo tail -n0 -f /var/log/messages

#Exit on the second terminal
exit


The directory /var/log contain many log files. Most messages are logged to
/var/log/messages but not all.


The command logger can be used to create log messages. Here the facility used
is local0 and the priority is info. This can be useful to test logging and also in
scripts.