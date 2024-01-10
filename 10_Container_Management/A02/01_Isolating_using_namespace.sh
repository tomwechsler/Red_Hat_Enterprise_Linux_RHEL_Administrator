#Working on the rhel system

#Display the system hostname
hostnamectl

#Display the amount of free and used memory in the system
free -h

#Display the file system disk space usage
df -hT /

#Start a new shell with root privileges
sudo bash

#Display the current running processes
ps

#Exit the shell
exit

#Start a new shell with root privileges in a new PID namespace and mount a new proc filesystem
sudo unshare --fork --pid --mount-proc bash

#Display the current running processes in the new PID namespace
ps

#Exit the shell
exit

#Display the network interface configurations
ip a sh

#Start a new shell with root privileges in a new PID and network namespace and mount a new proc filesystem
sudo unshare --fork --pid --net --mount-proc bash

#Display the current running processes in the new PID and network namespace
ps

#Display the network interface configurations in the new network namespace
ip a sh

#Exit the shell
exit

#Display the manual page for 'unshare' command
man unshare