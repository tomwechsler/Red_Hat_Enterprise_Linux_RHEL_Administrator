#Working on the rhel system

#Display currently running processes
ps

#Start a new shell session
sh

#Switch to the root user
sudo -i

#Display currently running processes again
ps

#Exit the root user session
exit

#Exit the shell session
exit

#Display detailed information about all running processes
ps -elf

#Filter and display processes related to bash
ps -elf | grep bash

#Filter and display processes related to "thump"
ps -elf | grep thump

#Open a second ssh session on first session
who

#Filter and display processes related to bash
ps -elf | grep bash

#Find the process ID (PID) of bash processes
pgrep bash

#Find the process ID (PID) of processes matching "ba"
pgrep ba

#Find and list processes matching "ba" with their names
pgrep -l ba

#Find and list processes matching "bash" with their names
pgrep -l bash

#Display the process ID (PID) of the current shell
echo $$

#The second ssh session will close
kill 14515

#List all available signal names
kill -l

#Display the currently active tuned profile
tuned-adm active

#Verify the current tuned profile for correctness
tuned-adm verify

#Recommend the best tuned profile for the system
tuned-adm recommend

#List all available tuned profiles
tuned-adm list

#Apply the "desktop" tuned profile
sudo tuned-adm profile desktop

#Display the currently active tuned profile again
tuned-adm active

#Apply the "virtual-guest" tuned profile
sudo tuned-adm profile virtual-guest