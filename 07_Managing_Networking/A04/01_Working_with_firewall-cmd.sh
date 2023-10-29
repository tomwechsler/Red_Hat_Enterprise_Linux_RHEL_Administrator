#Working on the rhel system

sudo -i

#Check the status of the firewall
firewall-cmd --state

#List the current zones
firewall-cmd --list-all

#Get the default zone
firewall-cmd --get-default-zone

#The permanent configuration
firewall-cmd --list-all --permanent

#The default firewalld config files
ls /usr/lib/firewalld/zones/

#The modified firewalld config files
ls /etc/firewalld/zones/

#Cat the public config file
cat /etc/firewalld/zones/public.xml

#Info from the zone file (similar to --list-all)
firewall-cmd --info-zone=public

#List the cockpit service
firewall-cmd --info-service=cockpit