#Working on the rhel system

#List all running containers
podman ps

#List all containers, including those not running
podman ps -a

#Remove all stopped containers
podman container prune -f

#Run a container from the 'ubuntu:focal' image interactively and name it 'ubuntu'
podman container run -it --name ubuntu ubuntu:focal

#Display the operating system release information
cat /etc/os-release

#Exit the container
exit

#Remove the 'ubuntu' container
podman container rm ubuntu

#Run a container from the 'ubuntu:focal' image interactively, remove it when it exits, and name it 'ubuntu'
podman container run -it --rm --name ubuntu ubuntu:focal

#Exit the container
exit

#List all containers, including those not running
podman container ls -a

#Run a container from the 'ubuntu:focal' image interactively, remove it when it exits, name it 'ubuntu', and set its hostname to 'ubuntu'
podman container run -it --rm --name ubuntu --hostname ubuntu ubuntu:focal

#Exit the container
exit