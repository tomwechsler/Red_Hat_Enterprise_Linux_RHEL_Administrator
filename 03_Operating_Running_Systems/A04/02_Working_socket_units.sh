#Working on the rhel system

sudo yum install -y cockpit

sudo systemctl enable --now cockpit.socket

sudo ss -ntlp

curl http://localhost:9090

sudo ss -ntlp

systemctl list-units

systemctl list-units --type socket

systemctl list-unit-files --type socket

systemctl list-unit-files --type service

systemctl list-unit-files --type timer

systemctl list-unit-files --type target


RHEL comes with the Cockpit web management interface. Using a systemd
socket unit file rather than a service unit, systemd holds TCP port 9090 open
rather than needing to start the cockpit service. The service only starts when a
connection is made to the port.

We can list-units or list-unit-files with or without filters

list-units= Loaded systemd units
list-unit-files= All unit files no matter if they have been loaded