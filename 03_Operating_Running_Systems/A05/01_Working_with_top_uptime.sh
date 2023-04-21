#Working on the rhel system

uptime

lscpu

uptime

lscpu | grep CPU

lscpu | grep Core

lscpu | grep -E '^(CPU\(s\):|Core\(s\))'

top




The uptime command gives a great summary. As well as the current system
uptime, we can see the number of logged in users and the CPU load average for
the last 1, 5 and 15 minutes.

To understand the load average, you need to know how many CPU cores in your
system.