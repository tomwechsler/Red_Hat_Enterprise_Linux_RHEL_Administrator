#Working on the rhel system

#List all images
podman image ls

#Display the help message for the 'podman system prune' command
podman system prune --help

#Remove all unused data (including all unused images and all stopped containers)
podman system prune -a -f

#List all images again
podman image ls

#List all containers
podman container ls

#List all networks
podman network ls