#Working on the rhel system

#Run a container from the 'localhost/fedora' image in detached mode, name it 'controller', set its hostname to 'controller', and map port 2222 of the host to port 22 of the container
podman container run -d --name controller --hostname controller -p 2222:22 localhost/fedora

#Connect to the 'controller' container via SSH on port 2222, disable strict host key checking, and do not save the host key in the known hosts file
ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null vagrant@localhost

#Display the version of Ansible
ansible --version

#Exit the SSH session
exit

#Display the top processes of the 'controller' container
podman container top controller