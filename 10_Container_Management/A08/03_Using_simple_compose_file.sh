#Working on the rhel system

#Install 'podman-compose' package
sudo dnf install -y podman-compose

#Display the help message for the 'podman-compose' command
podman-compose --help

#Open the 'compose.yaml' file with 'vim' for editing
vim compose.yaml

version: '3'
services:
  apache:
    image: docker.io/ubuntu/apache2
    ports:
      - 8000:80

#Save and exit

#Start all services defined in the 'docker-compose.yml' file in detached mode
podman-compose up -d

#Send a GET request to 'http://localhost:8000'
curl localhost:8000

#Stop and remove all services defined in the 'docker-compose.yml' file
podman-compose down

#Start all services defined in the 'docker-compose.yml' file in detached mode again
podman-compose up -d

#Send a GET request to 'http://localhost:8000' again
curl localhost:8000

#Stop and remove all services defined in the 'docker-compose.yml' file again
podman-compose down