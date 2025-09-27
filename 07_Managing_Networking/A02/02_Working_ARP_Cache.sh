#Working on the rhel system

ping -c 3 192.168.56.108

#Show the arp cache
ip neighbor show

#Display the current ARP (neighbor) cache
ip n

#Delete the arp cache entry
sudo ip neibhor delete 192.168.56.108 dev eth1 lladdr 08:00:27:4a:1c:4c

#Display the current ARP (neighbor) cache
ip n

#Send 3 ICMP echo requests to 192.168.56.108 to update the ARP cache
ping -c 3 192.168.56.108

#Display the ARP cache again to see any changes
ip n

#Ping the IP address 1.1 to generate new ARP activity
ping 1.1

#Display the ARP cache again to see any changes
ip n

#Ping the domain www.cisco.com to generate ARP activity for its resolved IP
ping www.cisco.com

#Display the ARP cache again to see any changes
ip n