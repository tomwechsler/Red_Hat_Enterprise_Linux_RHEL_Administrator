#Working on the rhel system

#Change the current directory to 'Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A06/'
cd Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A06/

#Display the directory structure of 'project'
tree project

#Change the current directory to the home directory
cd

#Clone the 'Red_Hat_Enterprise_Linux_RHEL_Administrator' repository
git clone https://github.com/tomwechsler/Red_Hat_Enterprise_Linux_RHEL_Administrator.git

#Copy the 'Dockerfile' from the cloned repository to the 'project/ubuntu' directory
cp Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A06/project/ubuntu/Dockerfile ~/project/ubuntu/

#Change the current directory to 'project/ubuntu'
cd ~/project/ubuntu/

#Copy the 'vagrant' file from the 'project/fedora' directory to the current directory
cp ../fedora/vagrant .

#Copy the 'id_rsa.pub' file from the 'project/fedora' directory to the current directory
cp ../fedora/id_rsa.pub .

#List the contents of the current directory
ls

#Display the content of the 'Dockerfile'
cat Dockerfile

#Build an image from the Dockerfile in the current directory and tag it as 'localhost/ubuntu'
podman image build -t localhost/ubuntu .

#List all images
podman image ls

#Run a container from the 'localhost/ubuntu' image in detached mode, name it 'ubuntu', set its hostname to 'ubuntu', and map port 2022 of the host to port 22 of the container
podman container run -d -p 2022:22 --name ubuntu --hostname ubuntu localhost/ubuntu

#Connect to the 'ubuntu' container via SSH on port 2022, disable strict host key checking, and do not save the host key in the known hosts file
ssh -p 2022 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null vagrant@localhost

#Connect to the 'controller' container via SSH
ssh controller #This will will not work

#Exit the SSH session
exit

#Display the network settings of the 'ubuntu' container
podman container inspect ubuntu | grep Network

#Display the network settings of the 'ubuntu' container and the 10 lines following it
podman container inspect ubuntu | grep -A10 Network