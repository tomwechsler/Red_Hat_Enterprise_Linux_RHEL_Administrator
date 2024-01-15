#Working on the rhel system

#Clone the 'Red_Hat_Enterprise_Linux_RHEL_Administrator' repository
git clone https://github.com/tomwechsler/Red_Hat_Enterprise_Linux_RHEL_Administrator

#Copy the 'podman' directory from the cloned repository to the current directory
cp Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A05/podman/ .

#List the contents of the 'podman/www' directory with their security context
ls -lZ podman/www

#Change the security context of the 'podman/www' directory to 'container_file_t'
chcon -Rt container_file_t podman/www

#List the contents of the 'podman/www' directory with their security context again
ls -lZ podman/www

#Run a container from the 'apache2' image in detached mode, name it 'www', map port 8080 of the host to port 80 of the container, set the timezone to 'Europe/Zurich', and mount the 'podman/www' directory of the host to the '/var/www/html' directory of the container
podman container run -d --name www -p 8080:80 -e 'TZ=Europe/Zurich' -v /home/vagrant/podman/www:/var/www/html apache2

#Send a GET request to 'http://localhost:8080' using 'w3m'
w3m http://localhost:8080

#Exit the w3m browser with 'q' and 'y'
q and y

#Remove the 'www' container forcefully
podman container rm -f www