#Working on the rhel system

#Systemd has the first PID
ps -f -p 1

#Install the 'at' package
sudo dnf install -y at

#Check the status of the 'atd' service
sudo systemctl status atd

#Enable the 'atd' service to start at boot
sudo systemctl enable atd

#Start the 'atd' service immediately
sudo systemctl start atd

#Much better all in one
sudo systemctl enable --now atd

#Shell trick
^enable^status

#Check the status of the 'chronyd' service
sudo systemctl status chronyd

#Stop the 'chronyd' service
sudo systemctl stop chronyd

#Check the status of the 'chronyd' service again
sudo systemctl status chronyd

#Disable the 'chronyd' service from starting at boot
sudo systemctl disable chronyd

#Or in one line

#Disable and stop the 'chronyd' service immediately in one command
sudo systemctl disable --now chronyd

#Enable and start the 'chronyd' service immediately in one command
sudo systemctl enable --now chronyd

#Disable and stop both 'atd' and 'chronyd' services immediately in one command
sudo systemctl disable --now atd chronyd

#Both together
sudo systemctl enable --now chronyd atd