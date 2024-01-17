#From the running 'ubuntu' container, connect to the 'controller' container via SSH

#Connect to the 'controller' container via SSH
ssh controller #This will will not work

#Exit the SSH session
exit

#Display the network settings of the 'ubuntu' container
podman container inspect ubuntu | grep Network

#Display the network settings of the 'ubuntu' container and the 10 lines following it
podman container inspect ubuntu | grep -A10 Network