#Working on the rhel system

#Ifconfig is deprecated, use ip instead
ifconfig

#Displays the manual page for the ifconfig command.
man ifconfig

#Shows the IP addresses assigned to all network interfaces.
ip address show

#Shows the IP address assigned to the eth1 network interface.
ip address show eth1

#Shows only the IPv4 address assigned to the eth1 network interface.
ip -4 address show eth1

#Shows the IP addresses assigned to all network interfaces using the shorthand option.
ip addr sh

#Shows only the IPv4 address assigned to the eth1 network interface using the shorthand option.
ip -4 a s eth1

#Adds the IP address 172.16.1.1 with a subnet mask of 255.255.0.0 to the eth1 network interface.
sudo ip addr add 172.16.1.1/16 dev eth1

#Ahows only the IPv4 address assigned to the eth1 network interface using the shorthand option.
ip -4 a s eth1