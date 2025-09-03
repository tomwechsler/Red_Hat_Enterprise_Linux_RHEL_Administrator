#Working on the rhel system

#Sleep for 5 seconds
sleep 5

#Sleep for 5 seconds in the background
sleep 5&

#List all background jobs
jobs

#About 17 minutes
sleep 1000&

#You don't believe me
expr 1000 / 60

#Install the bc package for performing floating-point calculations
sudo dnf install -y bc

#Perform a floating-point division (1000/60) using bc
echo "1000/60" | bc -l

#Start a background process that sleeps for 1000 seconds
sleep 1000&

#List all background jobs
jobs

#Display detailed information about the sleep process
ps -elf | grep sleep

#Find the process ID (PID) of the sleep process
pgrep sleep

#Display detailed information about the sleep process using its PID
ps -lp $(pgrep sleep)

#Terminate the sleep process
pkill sleep

#The nice value can range from -20 to 19

#Start a background process with a nice value of 12
nice -n 12 sleep 1000&

#Display detailed information about the process with PID 9781
ps -lp 9781

#Change the nice value of the process with PID 9781 to 19
renice 19 9781

#Change the nice value of the process with PID 9781 to 10
renice 10 9781