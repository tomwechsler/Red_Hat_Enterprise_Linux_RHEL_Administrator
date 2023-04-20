#Working on the rhel system

#Systemd has the first PID
ps -f -p 1


sudo dnf install -y at

sudo systemctl status at

sudo systemctl enable at

sudo systemctl start at

#Much better all in one
sudo systemctl enable --now at

#Shell trick
^enable^status

sudo systemctl status chronyd

sudo systemctl stop chronyd

sudo systemctl status chronyd

sudo systemctl disable chronyd

#Or in one line
sudo systemctl disable --now chronyd

sudo systemctl enable --now chronyd

sudo systemctl disable --now at chronyd

#Both together
sudo systemctl enable --now chrnoyd at



The advent of systemd has helped unify Linux flavors so that service
management is now the same across Red Hat and Debian based distributions.
The main tool we have to manage services is systemctl.