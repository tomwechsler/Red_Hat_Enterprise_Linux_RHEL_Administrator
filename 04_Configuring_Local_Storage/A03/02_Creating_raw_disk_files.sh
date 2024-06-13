#Working on rhel

#Pause execution for 5 seconds and measure the time taken
time sleep 5

#Create a file named 'dd.disk' of size 500MB filled with zeros, and measure the time taken
time dd if=/dev/zero of=dd.disk bs=1M count=500 

#Create a file named 'fa.disk' of size 500MB using fallocate, and measure the time taken
time fallocate -l 500M fa.disk 

#Show the status of loop devices
losetup

#Show the status of loop devices with superuser privileges
sudo losetup

#Associate the first free loop device with the 'dd.disk' file
sudo losetup -f dd.disk

#Show the status of loop devices
losetup

#Associate the loop device '/dev/loop6' with the 'fa.disk' file
sudo losetup /dev/loop6 fa.disk

#Show the status of loop devices
losetup

#Detach the loop device
sudo losetup -d /dev/loop6

losetup

#Detach all loop devices
sudo losetup -D

losetup