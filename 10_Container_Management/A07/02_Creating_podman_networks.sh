#Working on the rhel system

#List all networks
podman network ls

#Display the network interfaces
ip link

#Display detailed information about the 'controller' container
podman container inspect controller | less

#Display the help message for the 'podman network create' command
podman network create --help

#Create a network named 'my-net' with a subnet of '172.16.1.0/24' and a gateway of '172.16.1.1'
podman network create --subnet 172.16.1.0/24 --gateway 172.16.1.1 my-net

#List all networks again
podman network ls

#Remove the 'controller' container forcefully
podman container rm -f controller

#Remove the 'ubuntu' container forcefully
podman container rm -f ubuntu

#Run a container from the 'localhost/fedora' image in detached mode, name it 'controller', set its hostname to 'controller', map port 2222 of the host to port 22 of the container, and connect it to the 'my-net' network
podman container run -d --name controller --hostname controller -p 2222:22 --network my-net localhost/fedora

#Run a container from the 'localhost/ubuntu' image in detached mode, name it 'ubuntu', set its hostname to 'ubuntu', and connect it to the 'my-net' network
podman container run -d --name ubuntu --hostname ubuntu --network my-net localhost/ubuntu

#Display detailed information about the 'controller' container
podman container inspect controller | less

#Connect to the 'controller' container via SSH on port 2222, disable strict host key checking, and do not save the host key in the known hosts file
ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null vagrant@localhost

#Connect to the 'ubuntu' container via SSH
ssh vagrant@ubuntu

#Connect to the 'controller' container via SSH
ssh controller

#Exit the SSH session
exit

#Exit the SSH session
exit