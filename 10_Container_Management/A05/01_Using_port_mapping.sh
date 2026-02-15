#Working on the rhel system

#Install 'w3m' package with root privileges
sudo dnf install -y w3m

#Search for 'apache2' in the container image registries
podman image search apache2

#Display detailed information about the 'ubuntu:apache2' image from Docker Hub using Skopeo
skopeo inspect docker://docker.io/ubuntu/apache2 #At the bottom see the Timezone

#Pull the 'ubuntu/apache2' image from Docker Hub
podman image pull docker.io/ubuntu/apache2

#Run a container from the 'apache2' image in detached mode and name it 'www'
podman container run -d --name www apache2

#Run a shell in the 'www' container interactively
podman exec -it www /bin/bash

#Display the operating system release information
cat /etc/os-release

#Display the current date and time
date

#Exit the container
exit

#Display the command that will be run when a container is started from the 'www' image
podman container inspect --format "{{.Config.Cmd}}" www

#Remove the 'www' container forcefully
podman container rm -f www

#Run a container from the 'apache2' image in detached mode, name it 'www', map port 8080 of the host to port 80 of the container, and set the timezone to 'Europe/Zurich'
podman container run -d --name www -p 8080:80 -e 'TZ=Europe/Zurich' apache2

#Send a GET request to 'http://localhost:8080' using 'w3m'
w3m http://localhost:8080

#Run a shell in the 'www' container interactively
podman exec -it www /bin/bash

#Display the current date and time
date

#Exit the container
exit

#Remove the 'www' container forcefully
podman container rm -f www