sudo yum install -y w3m
podman image pull docker.io/ubuntu/apache2
chcon -Rt container_file_t /home/tux/podman/www
podman container run -d --name www -e TZ='Europe/London' -p 8080:80 -v /home/tux/podman/www:/var/www/html apache2:latest
podman container rm -f www
sudo setsebool -P container_manage_cgroup true