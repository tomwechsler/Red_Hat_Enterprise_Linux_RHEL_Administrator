#Working on the rhel system

#Unit file location
#/usr/lib/systemd/system => The standard location of unmodified unit file
#/etc/systemd/system => Modified unit files overwirte the defaults when added to this path

#Check the file location
systemctl cat atd

#--full we will create a copy (just remove the empty lines)
sudo systemctl edit --full atd

#Now look at the file location
systemctl cat atd | head -n 3

#The system need to know the changes
sudo systemctl daemon-reload

#Remove the file
sudo rm /etc/systemd/system/atd.service

sudo systemctl daemon-reload 

#Check the file location
systemctl cat atd

#To mask a service
sudo systemctl mask --now atd

#This will not work
sudo systemctl start atd


The cat sub-command is useful both to list the file content and the file location.

We also have an edit sub-command that is used to make changes. The path
changes to the /etc structure as we make a minor change to the description.

Masking a unit file prevents it starting automatically or manually while it is 
masked. This is achieved by creating a symlink inside the /etc/systemd/system
structure pointing to /dev/null.

We need to remove any of our customizations first and reload systemd.