#Working on the rhel system

#List the nmcli device
sudo nmcli device

#List the nmcli connection
sudo nmcli connection

#Add a new connection
sudo nmcli connection add type ethernet ifname eth1 ipv4.method manual ipv4.addresses 192.168.100.1/24 connection.id athome

#List the nmcli connection
sudo nmcli connection

#Display the config file
cat /etc/NetworkManager/system-connections/athome.nmconnection

#Bring up the connection
sudo nmcli connection up athome

#List the nmcli connection
sudo nmcli connection