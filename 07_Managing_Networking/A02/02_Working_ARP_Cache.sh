#Working on the rhel system

ping -c 3 192.168.56.108

#Show the arp cache
ip neighbor show

ip n

#Delete the arp cache entry
sudo ip neibhor delete 192.168.56.108 dev eth1 lladdr 08:00:27:4a:1c:4c

ip n

ping -c 3 192.168.56.108

ip n

ping 1.1

ip n

ping www.cisco.com

ip n