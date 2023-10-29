#Working on the rhel system

sudo -i

#Remove the http service
firewall-cmd --remove-service=http

#Curl from the remote host
curl 192.168.56.101

#Add the http service to the internal zone
firewall-cmd --add-service=http --zone=internal

#List the internal zone
firewall-cmd --list-all --zone=internal

#Add a source to the internal zone (the zone comes active)
firewall-cmd --add-source=192.168.56.0/24 --zone=internal

#Curl from the remote host
curl 192.168.56.101

#Write rules to the permanent configuration
firewall-cmd --runtime-to-permanent