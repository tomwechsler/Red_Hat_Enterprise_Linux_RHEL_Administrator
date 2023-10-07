#Working on the redhat system

sudo -i

#Install the 'at' package
dnf install at

#Enable and start the 'atd' service
systemctl enable --now atd

#List the files in the '/etc/at*' directory
ls /etc/at*

#Display the contents of the '/etc/at.deny' file
cat /etc/at.deny

#Exit the root shell
exit

#Schedule a job to run the 'ls /etc' command at 2:00 PM
at 14:00
ls /etc > /tmp/afternoon
<ctrl+d>

#Schedule a job to run the 'date' command at 5:00 AM on November 29th
at 5:00 29 November
date > /tmp/date
<ctrl+d>

#List the scheduled jobs
atq

#Display the help message for the 'atq' command
atq --help

#Remove the job with ID 2 from the queue
atrm 2

#Display the details of the job with ID 1
at -c 1