#Working on the redhat system

sudo -i

#Display the status of all services
systemctl status

#Display the status of the chronyd service
systemctl status chronyd

#Disable and stop the chronyd service
systemctl disable --now chronyd

#Display the status of the chronyd service
systemctl status chronyd

#Enable and start the chronyd service
systemctl enable --now chronyd

#Display the contents of the chronyd service unit file
systemctl cat chronyd

#Edit the chronyd service unit file
systemctl edit chronyd --full

#Display the contents of the chronyd service unit file
systemctl cat chronyd