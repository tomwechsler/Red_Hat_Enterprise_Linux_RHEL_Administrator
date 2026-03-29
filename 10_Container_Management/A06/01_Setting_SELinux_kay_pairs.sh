#Working on the rhel system

#Set the SELinux boolean 'container_manage_cgroup' to true persistently
sudo setsebool -P container_manage_cgroup true

#Generate a new SSH key pair without a passphrase
ssh-keygen -f ~/.ssh/id_rsa -N ""

#Create the 'project/ubuntu' and 'project/fedora' directories
mkdir -p project/{ubuntu,fedora}

#Display the directory structure of 'project'
tree project

#Change the current directory to 'project/fedora'
cd project/fedora

#Copy the public SSH key to the current directory
cp ~/.ssh/id_rsa.pub .

#Create a file named 'vagrant' with the content 'vagrant ALL=(root) NOPASSWD: ALL'
echo 'vagrant ALL=(root) NOPASSWD: ALL' > vagrant

#Check the syntax of the 'vagrant' file with 'visudo'
visudo -cf vagrant

#List the contents of the current directory with their details
ls -l