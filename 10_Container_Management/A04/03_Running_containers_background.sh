#Working on the rhel system

#Run a container from the 'ubuntu:focal' image in detached mode, interactively, with a TTY, and name it 'ubuntu'
podman container run -dit --name ubuntu --hostname ubuntu ubuntu:focal

#List all running containers
podman ps

#Attach to the 'ubuntu' container
podman container attach ubuntu

#Create a new file named 'file1' in the 'ubuntu' container
touch file1

#Display the current working directory in the 'ubuntu' container
pwd

#List the contents of the current directory in the 'ubuntu' container
ls -l

#Detach from the 'ubuntu' container without stopping it
ctrl + p + q

#List all running containers
podman ps

#Stop the 'ubuntu' container
podman container stop ubuntu

#List all containers, including those not running
podman container ls -a

#Start the 'ubuntu' container
podman container start ubuntu

#Attach to the 'ubuntu' container
podman container attach ubuntu

#List the contents of the current directory in the 'ubuntu' container
ls -l

#Detach from the 'ubuntu' container without stopping it
ctrl + p + q