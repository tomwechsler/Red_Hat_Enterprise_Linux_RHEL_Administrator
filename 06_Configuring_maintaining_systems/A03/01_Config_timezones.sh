#Working on the redhat system

sudo -i

#List the available chrony packages
dnf list chrony

#Check the status of the chronyd service
systemctl status chronyd

#Display the current system time and timezone
timedatectl

#Set the system clock to use UTC instead of the local time
timedatectl set-local-rtc 0

#Display the updated system time and timezone
timedatectl

#Set the system timezone to Europe/Zurich
timedatectl set-timezone Europe/Zurich

#If we get an error, create a symbolic link between the timezone file and the localtime file
ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime

#Display the final system time and timezone
timedatectl