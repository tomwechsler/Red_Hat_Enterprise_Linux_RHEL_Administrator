#Working on the rhel system

#List all images in the local storage
podman images

#List all images in the local storage (alternative command)
podman image ls

#List all running containers
podman container ls

#List all containers, including those not running
podman container ls -a

#List all running containers (alternative command)
podman ps

#List all containers, including those not running (alternative command)
podman ps -a

#Run a container from the 'hello' image interactively
podman container run -it hello

#List all images in the local storage again to see if 'hello' image has been pulled
podman image ls

#List all running containers again to see if 'hello' container is running
podman container ls

#List all containers, including those not running, again to see if 'hello' container is listed
podman container ls -a