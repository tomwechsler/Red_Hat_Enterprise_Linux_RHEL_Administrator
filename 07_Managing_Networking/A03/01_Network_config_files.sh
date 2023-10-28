#Working on the rhel system

#Check the ips
ip addr sh

#List the network config files (a new path in rhel 9)
ls /etc/NetworkManager/system-connections/

#In older RHEL Systems
ls /etc/sysconfig/network-scripts/

#Display the config file
cat /etc/NetworkManager/system-connections/enp0s8.nmconnection

#Check the NetworkManager status
systemctl status NetworkManager