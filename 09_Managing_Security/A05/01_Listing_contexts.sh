#Working on alma (with two register vagarnt/root)

#Display the current process status
ps

#Display the security context of the current process status
ps -Z

#List the '/etc/shadow' file with its security context
ls -Z /etc/shadow

#Change the password for 'tux' user with root privileges
sudo passwd tux

#Switch to the root tab/session

#Get the process ID of the 'passwd' command
pgrep passwd

#Display the security context of the 'passwd' command process
ps -Zp $(pgrep passwd)