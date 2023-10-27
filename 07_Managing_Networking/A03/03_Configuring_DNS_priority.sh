#Working on the rhel system

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Display the config file
cat /etc/NetworkManager/system-connections/athome.nmconnection

#List the connection
nmcli connection

#Add DNS Server
sudo nmcli connection modify athome ipv4.dns 8.8.8.8

#Bring up the connection
sudo nmcli connection up athome

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Display the config file
cat /etc/NetworkManager/system-connections/athome.nmconnection

#Add DNS Priority
sudo nmcli connection modify athome ipv4.dns-priority 10

#Bring up the connection
sudo nmcli connection up athome

#Display the config file
cat /etc/NetworkManager/system-connections/athome.nmconnection

#Display /etc/resolv.conf
cat /etc/resolv.conf

#Edit DNS Priority
sudo nmcli connection modify athome ipv4.dns-priority -1

#Bring up the connection
sudo nmcli connection up athome

#Display /etc/resolv.conf
cat /etc/resolv.conf