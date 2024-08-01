#Display the amount of free and used memory in the system
free

#Display the amount of free and used memory in bytes
free -b

#Display the amount of free and used memory in kilobytes
free -k

#Display the amount of free and used memory in megabytes
free -m

#Display the amount of free and used memory in gigabytes
free -g

#Display the amount of free and used memory in human-readable format
free -h

#Display volume group information for vg1
vgs vg1

#Create a logical volume named swap with a size of 104MB in volume group vg1
lvcreate -n swap -L 104M vg1

#Set up a Linux swap area on the logical volume /dev/vg1/swap
mkswap /dev/vg1/swap

#Enable the swap space on /dev/mapper/vg1-swap with a priority of 10
swapon -p 10 /dev/mapper/vg1-swap

#Display summary information about swap space usage
swapon -s

#Disable all swap spaces
swapoff -a

#Open the /etc/fstab file in the vim editor to add swap entry
vim /etc/fstab

#Add the swap entry to /etc/fstab for automatic mounting at boot
/dev/mapper/vg1-swap none swap pri=3 0 0

#Enable all swap spaces defined in /etc/fstab
swapon -a

#Display summary information about swap space usage
swapon -s

#Remove the swap line
vim /etc/fstab