#Working on the rhel system

#Systemd has the first PID
ps -f -p 1

sudo dnf install -y at

sudo systemctl status atd

sudo systemctl enable atd

sudo systemctl start atd

#Much better all in one
sudo systemctl enable --now atd

#Shell trick
^enable^status

sudo systemctl status chronyd

sudo systemctl stop chronyd

sudo systemctl status chronyd

sudo systemctl disable chronyd

#Or in one line
sudo systemctl disable --now chronyd

sudo systemctl enable --now chronyd

sudo systemctl disable --now atd chronyd

#Both together
sudo systemctl enable --now chronyd atd