#Working on the rhel system

#List all running containers
podman ps

#List all running containers (alternative command)
podman container ps

#List all containers, including those not running
podman container ls

#List all containers, including those not running (alternative command)
podman container list

#Display the top processes of the 'ubuntu' container
podman container top ubuntu

#Display detailed information about the 'ubuntu' container
podman container inspect ubuntu

#Display the logs of the 'ubuntu' container
podman container logs ubuntu

#Attach to the 'ubuntu' container
podman container attach ubuntu

#Update the package lists for upgrades and new packages from repositories
apt update

#Install 'w3m' package
apt install -y w3m

#Exit the container
exit

#Display the logs of the 'ubuntu' container again
podman container logs ubuntu

#Remove all stopped containers
podman container prune -f