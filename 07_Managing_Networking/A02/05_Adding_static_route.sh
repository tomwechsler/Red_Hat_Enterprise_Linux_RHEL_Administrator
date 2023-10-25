#Working on the rhel system

#Add a ip address on veth1
sudo ip netns exec net1 ip addr add 192.168.100.1/24 dev veth1

#Check the route
ip route

#Add a route
sudo ip route add 192.168.100.0/24 via 10.0.0.2

#Check the route
ip route

#Ping
ping 192.168.100.1