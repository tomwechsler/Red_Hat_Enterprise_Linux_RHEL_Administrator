#Working on the rhel system

sudo -i

#Install apache
dnf install -y httpd

#Start the service
systemctl enable --now httpd

#Curl the local host
curl localhost

#Curl from the remote host
curl 192.168.56.101

#Add the http service
firewall-cmd --add-service=http

#Curl from the remote host
curl 192.168.56.101

#List the firewall zones and services
firewall-cmd --list-all

#List the permanent configuration
firewall-cmd --list-all --permanent

#Write rules to the permanent configuration
firewall-cmd --runtime-to-permanent

#List the permanent configuration
firewall-cmd --list-all --permanent