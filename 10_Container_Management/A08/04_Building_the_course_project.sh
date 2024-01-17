#Working on the rhel system

#Change the current directory to 'podman/project/'
cd podman/project/

#List the contents of the current directory
ls

#Change the SELinux context of the 'playbooks/' directory to 'container_file_t' recursively
chcon -Rt container_file_t playbooks/

#List the contents of the 'playbooks/' directory with their SELinux contexts
ls -lZd playbooks/

#Display the content of the 'compose.yaml' file
less compose.yaml

#Build all services defined in the 'compose.yaml' file
podman-compose build

#List all images
podman image ls

#Start all services defined in the 'compose.yaml' file in detached mode
podman-compose up -d

#List all running services defined in the 'compose.yaml' file
podman-compose ps