sudo yum install -y skopeo
skopeo inspect docker://docker.io/library/ubuntu:latest
skopeo inspect  --format "{{.RepoTags}}" docker://docker.io/library/ubuntu:latest | tr ' ' '\n'
podman image pull docker.io/ubuntu:focal
podman image pull docker.io/fedora:38
podman container prune -f