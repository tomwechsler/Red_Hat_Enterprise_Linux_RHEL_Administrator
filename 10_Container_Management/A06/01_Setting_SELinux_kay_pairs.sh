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

#Create a file named 'tom' with the content 'tom ALL=(root) NOPASSWD: ALL'
echo 'tom ALL=(root) NOPASSWD: ALL' > tom

#Check the syntax of the 'tom' file with 'visudo'
visudo -cf tom

#List the contents of the current directory with their details
ls -l