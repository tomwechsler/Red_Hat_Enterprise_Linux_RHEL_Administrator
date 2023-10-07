#Working on the redhat system

sudo -i

#List the files in the '/etc/cron*' directory
ls /etc/cron*

#Display the contents of the '/etc/crontab' file
cat /etc/crontab

#Schedule a job to run the 'ls /etc' command at 7:15 AM every day
echo "15 7 * * * root ls /etc > /tmp/etc" > /etc/cron.d/ls_etc

#Display the manual page for the 'crontab' command
man crontab

#Display the manual page for the 'crontab' file format
man 5 crontab

#Exit the shell

#Edit the current user's crontab file
crontab -e

#Install the 'nano' text editor
sudo install -y nano

#Edit the current user's crontab file using the 'nano' editor
EDITOR=nano crontab -e

#Schedule a job to run the 'echo "Hello World"' command every 5 minutes
*/5 * * * * echo "Hello World" > /tmp/hello

#The default editor will be used
crontab -e

#List the current user's scheduled jobs
crontab -l

#Remove the current user's scheduled jobs
crontab -r