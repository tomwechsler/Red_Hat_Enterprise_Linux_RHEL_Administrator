#Working on the rhel system

#Install the 'cockpit' package
sudo dnf install -y cockpit

#Enable and start the 'cockpit.socket' service immediately
sudo systemctl enable --now cockpit.socket

#Display listening TCP ports and their status
sudo ss -ntlp

#Test the Cockpit web service by making an HTTP request to localhost on port 9090
curl http://localhost:9090

#Display listening TCP ports and their status again to verify the Cockpit service
sudo ss -ntlp

#List all active systemd units
systemctl list-units

#List all active socket units
systemctl list-units --type socket

#List all socket unit files
systemctl list-unit-files --type socket

#List all service unit files
systemctl list-unit-files --type service

#List all timer unit files
systemctl list-unit-files --type timer

#List all target unit files
systemctl list-unit-files --type target