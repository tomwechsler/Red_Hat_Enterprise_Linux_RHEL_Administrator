#Working on the rhel system

#Display the directory tree of the '.local' directory
tree .local

#Display the contents of the '/etc/containers/registries.conf' file
less /etc/containers/registries.conf

#Search for 'ubuntu' in the container image registries
podman image search ubuntu

#Search for 'hello' in the container image registries
podman image search hello

#Display the lines containing 'hello' in the '/etc/containers/registries.conf.d/000-shortnames.conf' file
grep hello /etc/containers/registries.conf.d/000-shortnames.conf

#Search for 'fedora' in the container image registries
podman image search fedora

#Pull the 'fedora' image from Docker Hub
podman image pull docker.io/library/fedora

#Pull the 'ubuntu' image from Docker Hub
podman image pull docker.io/library/ubuntu

#List all images in the local storage
podman image ls

#Display detailed information about the 'hello' image
podman image inspect hello

#Display the configuration of the 'hello' image in JSON format
podman image inspect hello --format "{{json .Config}}"

#Display the command that will be run when a container is started from the 'hello' image in JSON format
podman image inspect hello --format "{{json .Config.Cmd}}"

#Display the command that will be run when a container is started from the 'ubuntu' image in JSON format
podman image inspect ubuntu --format "{{json .Config.Cmd}}"