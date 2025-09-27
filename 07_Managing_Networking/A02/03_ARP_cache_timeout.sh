#Working on the rhel system

#Display the current ARP (neighbor) cache
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

#Change the enp1s0 arp cache timeout value
sudo sysctl -w net.ipv4.neigh.enp1s0.gc_stale_time=120

#Check the arp cache timeout value
sysctl -a | grep gc_stale_time

#The sysctl.conf file
sudo vim /etc/sysctl.conf

net.ipv4.neigh.default.gc_stale_time=120
net.ipv4.neigh.enp1s0.gc_stale_time=120
net.ipv4.neigh.enp8s0.gc_stale_time=120

#Save and exit the file

#Print the sysctl.conf file (optional)
sudo sysctl -p