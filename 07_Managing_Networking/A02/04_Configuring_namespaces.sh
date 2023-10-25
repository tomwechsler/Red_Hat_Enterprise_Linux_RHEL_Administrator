#Working on the rhel system

#Namespaces
ip netns

#Create a new namespace
sudo ip netns add net1

#Check the new namespace
ip netns

#List the links
ip link

#Links in the new namespace
sudo ip netns exec net1 ip link

#Bring the loopback interface up in the new namespace
sudo ip netns exec net1 ip link set dev lo up

#Check the loopback interface in the new namespace
sudo ip netns exec net1 ip link

#Check id address of the loopback interface in the new namespace
sudo ip netns exec net1 ip addr show

#Create a new veth pair
sudo ip link add veth0 type veth peer name veth1 netns net1

#Check link
ip link

#Check link in the new namespace
sudo ip netns exec net1 ip link

#Set ip address on veth1
sudo ip netns exec net1 ip addr add 10.0.0.1/24 dev veth1

#Bring the veth1 interface up
sudo ip netns exec net1 ip link set dev veth1 up

#Check the status of the veth1 interface
sudo ip netns exec net1 ip addr show

#Can we ping the veth1 interface from the rhel system?
ip netns exec net1 ping -c 1 10.0.0.1

#But not from default namespace
ping -c 1 10.0.0.1

#There is no route
ip route

#Config a ip address on veth0
sudo ip addr add 10.0.0.2/24 dev veth0

#Bring the veth0 interface up
sudo ip link set dev veth0 up

#Display the route table
ip route

#Now the ping works
ping -c 1 10.0.0.1