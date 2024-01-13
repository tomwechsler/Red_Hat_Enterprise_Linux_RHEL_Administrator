#Working on the rhel system

#Run a container from the 'ubuntu' image interactively
podman container run -it ubuntu

#Display the operating system release information
cat /etc/os-release

#Exit the container
exit

#Search for 'ubuntu' in the container image registries
podman image search ubuntu

#Install 'skopeo' package with root privileges
sudo yum install -y skopeo

#Display detailed information about the 'ubuntu:latest' image from Docker Hub using Skopeo
skopeo inspect docker://docker.io/library/ubuntu:latest

#Display the repository tags of the 'ubuntu:latest' image from Docker Hub using Skopeo
skopeo inspect  --format "{{.RepoTags}}" docker://docker.io/library/ubuntu:latest

#Display the repository tags of the 'ubuntu:latest' image from Docker Hub using Skopeo and format the output
skopeo inspect  --format "{{.RepoTags}}" docker://docker.io/library/ubuntu:latest | tr ' ' '\n'

#Display the repository tags of the 'ubuntu:latest' image from Docker Hub using Skopeo, format the output, and filter for 'focal'
skopeo inspect  --format "{{.RepoTags}}" docker://docker.io/library/ubuntu:latest | tr ' ' '\n' | grep focal

#Pull the 'ubuntu:focal' image from Docker Hub
podman image pull docker.io/ubuntu:focal

#Pull the 'fedora:38' image from Docker Hub
podman image pull docker.io/fedora:38