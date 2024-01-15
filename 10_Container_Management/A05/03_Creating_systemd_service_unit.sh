#Working on the rhel system

#Switch to the root user
sudo -i

#Run a container from the 'ubuntu/apache2' image in detached mode, name it 'www', map port 8080 of the host to port 80 of the container, set the timezone to 'Europe/Zurich', and mount the '/home/vagrant/podman/www' directory of the host to the '/var/www/html' directory of the container
podman container run -d --name www -p 8080:80 -e 'TZ=Europe/Zurich' -v /home/vagrant/podman/www:/var/www/html docker.io/ubuntu/apache2

#Display all listening sockets and their programs
ss -ntl

#Stop the 'www' container
podman container stop www

#Generate a systemd unit file for the 'www' container
podman generate systemd www

#Generate a systemd unit file for the 'www' container and save it to '/etc/systemd/system/www.service'
podman generate systemd www > /etc/systemd/system/www.service

#Reload the systemd manager configuration
systemctl daemon-reload

#Display all listening sockets and their programs again
ss -ntl

#Enable and start the 'www' service
systemctl enable --now www

#Display all listening sockets and their programs again
ss -ntl

#Send a GET request to 'http://localhost:8080' using 'w3m'
w3m http://localhost:8080

#Exit the root user
exit