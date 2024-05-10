#Working on the rhel system

sudo dnf install -y cockpit

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