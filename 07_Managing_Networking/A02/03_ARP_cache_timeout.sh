#Working on the rhel system

ip neigh show

#Display the arp cache timeout value
cat /proc/sys/net/ipv4/neigh/default/gc_stale_time

#Use sysctl to display the arp cache timeout value
sysctl -a

sysctl -a | grep gc_stale_time

#Change the default arp cache timeout value
sudo sysctl -w net.ipv4.neigh.default.gc_stale_time=120

#Check the arp cache timeout value
sysctl -a | grep gc_stale_time

#Change the eth1 arp cache timeout value
sudo sysctl -w net.ipv4.neigh.eth1.gc_stale_time=120

#Check the arp cache timeout value
sysctl -a | grep gc_stale_time

#The sysctl.conf file
sudo vim /etc/sysctl.conf

net.ipv4.neigh.default.gc_stale_time=120
net.ipv4.neigh.eth1.gc_stale_time=120
net.ipv4.neigh.eth0.gc_stale_time=120

#Save and exit the file

#Print the sysctl.conf file (optional)
sudo sysctl -p