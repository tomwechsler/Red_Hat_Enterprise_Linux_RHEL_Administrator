#Working on the rhel system

sudo -i

#List the http service
firewall-cmd --info-service=http

firewall-cmd --info-service=https

#Add the https service to the internal zone (the port will be there for 10 seconds)
firewall-cmd --add-service=443/tcp --zone=internal --timeout=10

#List the internal zone
firewall-cmd --list-all --zone=internal

#10 seconds later
firewall-cmd --list-all --zone=internal

#Where are these rules stored?
ls /usr/lib/firewalld/services/

#Cat the http service file
cat /usr/lib/firewalld/services/http.xml

#Copy the http service to /etc/firewalld/services
cp /usr/lib/firewalld/services/http.xml /etc/firewalld/services/

#Lets edit the file
vim /etc/firewalld/services/http.xml

#Add the https service to the file
<port protocol="tcp" port="443"/>

#Save and exit

#List the http service
firewall-cmd --info-service=http

#Reload the firewall
firewall-cmd --reload

#List the http service
firewall-cmd --info-service=http