#Working on the rhel system

#Display the system uptime
uptime

#Display detailed CPU architecture information
lscpu

#Display the system uptime again
uptime

#Filter and display CPU-related information
lscpu | grep CPU

#Filter and display core-related information
lscpu | grep Core

#Filter and display specific CPU and core details
lscpu | grep -E '^(CPU\(s\):|Core\(s\))'

#Launch the top command for real-time process monitoring
top