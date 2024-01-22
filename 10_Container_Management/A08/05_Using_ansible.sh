#Working on the rhel system

#Connect to the 'controller' container via SSH on port 2222, disable strict host key checking, and do not save the host key in the known hosts file
ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null vagrant@localhost

#Change the current directory to 'playbooks'
cd playbooks

#List the contents of the current directory
ls

#Display the content of the 'ansible.cfg' file
cat ansible.cfg

#Display the content of the 'inventory' file
cat inventory

#Display the content of the 'group_vars/redhat' file
cat group_vars/redhat

#Display the content of the 'group_vars/debian' file
cat group_vars/debian

#Ping all hosts in the inventory file and ask for the SSH password
ansible all -k -m ping

#Install the 'w3m' package on all hosts in the inventory file, ask for the SSH password, and become root
ansible all -k -b -m package -a "name=w3m"

#Display the content of the 'apache.yaml' playbook
cat apache.yaml

#Run the 'apache.yaml' playbook and ask for the SSH password
ansible-playbook -k apache.yaml

#Display the 'ubuntu' web page with 'w3m'
w3m ubuntu

#Display the 'localhost' web page with 'w3m'
w3m localhost

#Exit the SSH session
exit

#Display the amount of free and used memory in the system
free -h

#List all running services defined in the 'compose.yaml' file
podman-compose ps

#Stop all services defined in the 'compose.yaml' file
podman-compose stop

#List all services defined in the 'compose.yaml' file again
podman-compose ps
